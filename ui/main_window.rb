require_relative '../qt_models'
require_relative '../qt_views/tableview'
require_relative 'ui_files/main_window_ui'
require_relative 'search_widget'

class MainWindow < Qt::MainWindow
  slots 'edit_item(QVariant&)'
  attr_reader :current_item
  def initialize(parent = nil)
	
	
	super(parent)
	@ui = Ui::MainWindow.new
	@ui.setup_ui(self)
	@ui.new_patient.connect :triggered, self, :new_patient
	@ui.searchPatient.connect :triggered, self, :search_patient
  end
  
  def new_patient
	p = Patient.first
	p.name = 'tdgs'
	p.save
  end
  
  def edit_item(variant)
	item = variant.value
	unless item == current_item
	  self.centralWidget = item.newEditWidget(self)
	  current_item = item
	end
  end
  
  def search_patient
	self.centralWidget = SearchWidget.new(self)
  end
  

  
  
end