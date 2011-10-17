# encoding: utf-8
require_relative '../qt_models'
require_relative '../qt_views/tableview'
require_relative 'ui_files/main_window_ui'
require_relative 'patients_main'
require_relative 'doctors_main'
require_relative 'exams_main'
require_relative '../db_models'
require_relative 'restore_backup'

class MainWindow < Qt::MainWindow
  slots 'edit_item(QVariant&)', 'new_patient()', 'new_doctor()', 'search()', 'backup_action()', 'restore_action()', 'action_triggered(QAction*)'
  slots 'main_patient_screen()', 'main_doctor_screen()', 'main_exams_screen()'
  slots 'stack_changed(int)'
  attr_reader :current_item, :current_action
  attr_accessor :mainPatientIndex, :mainDoctorIndex, :mainExamsIndex

  def initialize(parent = nil)
    super(parent)
  end

  def setup_ui
    @ui = Ui::MainWindow.new
    @ui.setup_ui(self)
    initialize_stack
    Qt::Object.connect(@stack, SIGNAL('currentChanged(int)'), self, SLOT('stack_changed(int)'))
  end

  def new_patient ;edit(Patient.new); end

  def new_doctor; edit(Doctor.new); end

  def edit_item(variant); edit(variant.value);  end

  def edit(item)
    curIndex = @widgetHash[item.class]
    @stack.widget(curIndex).item = item
    @current_action.checked = false unless @current_action.nil?
    @stack.currentIndex = curIndex
  end

  def main_patient_screen
    @stack.currentIndex = @mainPatientIndex
  end

  def main_doctor_screen
    @stack.currentIndex = @mainDoctorIndex
  end

  def main_exams_screen
    @stack.currentIndex = @mainExamsIndex
  end


  def action_triggered(action)
    @current_action.setChecked(false) unless @current_action.nil?
    @current_action = action
    @current_action.setChecked(true)
  end

  def initialize_stack
    @stack = Qt::StackedWidget.new(self.centralWidget)
    @ui.gridLayout_2.addWidget(@stack, 0, 0, -1, -1)
  
    # add patient main Widget
    @patientsMainWidget = PatientsMainWidget.new(@stack)
    @mainPatientIndex = @stack.addWidget(@patientsMainWidget)
    
    # add doctor main Widget
    @doctorsMainWidget = DoctorsMainWidget.new(@stack)
    @mainDoctorIndex = @stack.addWidget(@doctorsMainWidget)

    # add exams main Widget
    @examsMainWidget = ExamsMainWidget.new(@stack)
    @mainExamsIndex = @stack.addWidget(@examsMainWidget)
    
    @widgetHash = Hash.new
    [Patient, ExamSet, Doctor].each do |klass|
      @widgetHash[klass] = @stack.addWidget klass.editWidget.new(@stack, klass.new)
    end

    stack_changed(nil)
  end

  def stack_changed(currentIndex)
    # get the actions of the widget
    puts 'Hello from stack changed'
    currentWidget = @stack.currentWidget
    @ui.childToolbar.clear
    actionList = currentWidget.findChildren(Qt::Action)
    actionList.each do |a|
      @ui.childToolbar.addAction(a)
    end
  end

  def backup_action
    filename = "#{Dir.home}/backup-#{Date.today.to_s}.db"
    filename = Qt::FileDialog.getSaveFileName(self, 'Backup', filename)
    FileUtils::cp(DataBaseFileName, filename) unless filename.nil?
  end

  def restore_action
    filename = Qt::FileDialog.getOpenFileName(self, "Επιλογή Αρχείου Ασφαλείας", Dir.home, "Αρχεία Ασφαλείας (*.db)")
    restore_backup?(filename) unless filename.nil?
  end

  def restore_backup?(filename)
    info = {}
    DataMapper::setup(:backup, "sqlite:#{filename}")
    DataMapper.repository(:backup) do
      begin
        info[:patients] = Patient.count
        info[:doctors] = Doctor.count
        info[:exam_sets] = ExamSet.count
        info[:time] = File.new(filename).mtime
        info[:name] = File.basename(filename)
        if RestoreBackupDialog.new(self, info).exec
          FileUtils.cp(filename, DataBaseFileName)
        end
      rescue Exception => e
        puts e.message
        Qt::MessageBox::critical(self, "Αποτυχία", "Η επαναφορά του αρχείου ασφαλείας απέτυχε!")
      end
    end
  end
end
