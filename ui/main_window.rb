require_relative '../qt_models'
require_relative '../qt_views/tableview'
require_relative 'ui_files/main_window_ui'

class MainWindow < Qt::MainWindow
  
  
  def initialize(parent = nil)
	
	super(parent)
	@ui = Ui::MainWindow.new
	@ui.setup_ui(self)
	@ui.patientTable.model = PatientModel.new
	@ui.new_patient.connect :triggered, self, :new_patient
  end
  
  def new_patient
	Patient.new(:name => 'asd', :surname =>'qqqqqq').save
  end
  
  
end