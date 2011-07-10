# encoding: utf-8
require_relative 'person_model'
require_relative 'edit_person'
require 'Qt4'


class PersonList < Qt::TableView
  
  slots "edit_person(const QModelIndex&)"
  def initialize(model, parent = nil)
	super(parent)
	setModel(model)
	
	sizePolicy = Qt::SizePolicy.new(Qt::SizePolicy::Expanding, Qt::SizePolicy::Expanding)
	self.sortingEnabled = true
	contextMenuPolicy = Qt::ActionsContextMenu
	self.connect(SIGNAL('activated(const QModelIndex&)'), self, :edit_person)
  end
  
  def edit_person(index)
	self.model.newEditWidget(index, self)
  end
  
  def sizeHint
	Qt::Size.new(800,600)
  end
end

class DoctorList < PersonList
  def initialize(parent = nil)
	super(DoctorModel.new, parent)
	 @newDoctorAction = Qt::Action.new('&Νέος Ιατρός', nil)
	self.addAction(@newDoctorAction)
	Qt::Object.connect(@newDoctorAction, SIGNAL('triggered()'), self, SLOT('newDoctor()'))
  end
  
  def newDoctor()
	edit_person(Qt::ModelIndex.new, self)
  end
end

class PatientList < PersonList
  def initialize(parent = nil)
	super(PatientModel.new, parent)
  end
end
	


