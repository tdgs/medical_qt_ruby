require_relative '../qt_models'
require_relative '../qt_views/tableview'
require_relative 'ui_files/main_window_ui'

class MainWindow < Qt::MainWindow
  
  slots 'object_destroyed(QObject*)'
  def initialize(parent = nil)
	
	super(parent)
	@ui = Ui::MainWindow.new
	@ui.setup_ui(self)
	@ui.patientTable.model = PatientModel.new
	@ui.new_patient.connect :triggered, self, :new_patient
	
	
	puts 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'
	Qt::Object.connect(@ui.patientTable, SIGNAL('destroyed(QObject*)'), self, SLOT('object_destroyed(QObject*)'))
	puts 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'
	
  end
  
  def new_patient
	p = Patient.first
	p.name = 'tdgs'
	p.save
  end
  
  def object_destroyed(obj)
	puts 'Destroy!!'
  end
  

  
  
end