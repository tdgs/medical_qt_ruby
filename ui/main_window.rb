require_relative '../qt_models'
require_relative '../qt_views/tableview'
require_relative 'ui_files/main_window_ui'

class MainWindow < Qt::MainWindow
  slots 'edit_item(QVariant&)'
  
  def initialize(parent = nil)
	
	super(parent)
	@ui = Ui::MainWindow.new
	@ui.setup_ui(self)
	@ui.patientTable.model = PatientModel.new
	@ui.new_patient.connect :triggered, self, :new_patient
	
	
	
	Qt::Object.connect(@ui.patientTable, SIGNAL('edit_request(QVariant&)'), self, SLOT('edit_item(QVariant&)'))
	
	
  end
  
  def new_patient
	p = Patient.first
	p.name = 'tdgs'
	p.save
  end
  
  def edit_item(variant)
	item = variant.value
	puts item.inspect
  end
  

  
  
end