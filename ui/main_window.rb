# encoding: utf-8
require_relative '../qt_models'
require_relative '../qt_views/tableview'
require_relative 'ui_files/main_window_ui'
require_relative 'search_widget'
require_relative '../db_models'
require_relative 'restore_backup'

class MainWindow < Qt::MainWindow
  slots 'edit_item(QVariant&)', 'new_patient()', 'new_doctor()', 'search()', 'backup_action()', 'restore_action()'
  attr_reader :current_item
  def initialize(parent = nil)
    super(parent)
  end

  def setup_ui
    @ui = Ui::MainWindow.new
    @ui.setup_ui(self)
    initialize_stack
  end



  def new_patient
    edit(Patient.new)
  end

  def new_doctor
    edit(Doctor.new)
  end

  def edit_item(variant)
    edit(variant.value)
  end

  def edit(item)
    curIndex = @widgetHash[item.class]
    @stack.widget(curIndex).item = item
    @stack.currentIndex = curIndex
  end

  def search
    @stack.currentIndex = 0
  end 

  def initialize_stack
    @stack = Qt::StackedWidget.new(self.centralWidget)
    @ui.gridLayout_2.addWidget(@stack, 0, 0, -1, -1)
    @searchWidget = SearchWidget.new(@stack)
    @stack.addWidget(@searchWidget)
    @widgetHash = Hash.new
    [Patient, ExamSet, Doctor].each do |klass|
      @widgetHash[klass] = @stack.addWidget klass.editWidget.new(@stack, klass.new)
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
