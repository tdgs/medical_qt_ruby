require_relative '../qt_models'
require_relative '../qt_views/tableview'
require_relative 'ui_files/main_window_ui'
require_relative 'search_widget'
require_relative '../db_models'

class MainWindow < Qt::MainWindow
  slots 'edit_item(QVariant&)'
  attr_reader :current_item
  def initialize(parent = nil)
	super(parent)
	@ui = Ui::MainWindow.new
	@ui.setup_ui(self)
	@ui.new_patient.connect :triggered, self, :new_patient
	@ui.searchPatient.connect :triggered, self, :search_patient
	initialize_stack
	Qt::Object.connect(@searchWidget, SIGNAL('edit_request(QVariant&)'), self, SLOT('edit_item(QVariant&)'))
  end

  
  def new_patient
	edit(Patient.new)
  end
  
  def edit_item(variant)
	edit(variant.value)
  end
  
  def edit(item)
	curIndex = @widgetHash[item.class]
	@stack.widget(curIndex).item = item
	@stack.currentIndex = curIndex
  end
  
  def search_patient
	@stack.currentIndex = 0
  end 
  
  def initialize_stack
	@stack = Qt::StackedWidget.new(self.centralWidget)
	@ui.gridLayout_2.addWidget(@stack, 0, 0, -1, -1)
	@searchWidget = SearchWidget.new(@stack)
	@stack.addWidget(@searchWidget)
	@widgetHash = Hash.new
	[Patient, ExamSet].each do |klass|
	  @widgetHash[klass] = @stack.addWidget klass.editWidget.new(@stack, klass.new)
	end
  end
end