# encoding: utf-8
require_relative 'db_models'
require 'Qt4'
require_relative 'ui'

class MainWindow < Qt::MainWindow
  
  slots 'newDoctor()', 'editDoctor()', 'searchDoctors()'

  
  def initialize(parent = nil)
	super(parent)
	self.centralWidget = MainWidget.new(self)

	@doctorList = centralWidget.doctorList
	@patientList = centralWidget.patientList
	
	self.resize(800,800)
	createActions
	createMenus
  end
    
  def newDoctor
	DoctorModel.newEditWidget(Qt::ModelIndex.new, self)
  end
  
  private
  def createActions
	@doctorActions = Array.new
	@doctorActions << @newDoctorAction = Qt::Action.new('&Νέος Ιατρός', nil)
	Qt::Object.connect(@newDoctorAction, SIGNAL('triggered()'), self, SLOT('newDoctor()'))
	
	@doctorActions << @editDoctorAction = Qt::Action.new('&Επεξεργασία Ιατρού', nil)
	Qt::Object.connect(@editDoctorAction, SIGNAL('triggered()'), self, SLOT('editDoctor()'))
	@doctorActions << @searchDoctorsAction = Qt::Action.new('&Αναζήτηση Ιατρών', nil)
	Qt::Object.connect(@searchDoctorsAction, SIGNAL('triggered()'), self, SLOT('searchDoctors()'))

  end
  
  def createMenus
	
	@doctorMenu = self.menuBar.addMenu('&Ιατροι')
	@doctorActions.each  {|action|  @doctorMenu.addAction(action)}
  end

end




