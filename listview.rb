require_relative 'person_model'
require_relative 'edit_person'
require 'Qt4'


class PersonList < Qt::ListView
  
  slots "edit_person(const QModelIndex&)"
  def initialize(modelKlass, parent = nil)
	super(parent)
	setModel(modelKlass.new)
	self.connect(SIGNAL('activated(const QModelIndex&)'), self, :edit_person)
  end
  
  def edit_person(index)
	saved = self.model.newEditWidget(index, self).exec
	puts "EMIT? #{saved and not index.valid?}"
	if saved
	  
	end
end

class DoctorList < PersonList
  def initialize(parent = nil)
	super(DoctorModel, parent)
  end
end

class PatientList < PersonList
  def initialize(parent = nil)
	super(PatientModel, parent)
  end
end
	


