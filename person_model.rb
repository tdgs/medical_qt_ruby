require_relative 'db_models'
require 'Qt4'

class PersonModel < Qt::AbstractListModel
  @editWidgetKlass
  
  def initialize(klass, editWidgetKlass, parent = nil)
	
	@klass = klass
	@editWidgetKlass = editWidgetKlass
	@people = @klass.all
	load_from_db
	super(parent)
  end
  
  def load_from_db
	@people = @klass.all.to_a
  end
  
  
  def rowCount(parent = nil)
	@people.count
  end
  
   
  def data(index, role = Qt::DisplayRole)
	return Qt::Variant.new if (not index.valid? or role != Qt::DisplayRole)	
	Qt::Variant.new(itemFromIndex(index).full_name) if Qt::DisplayRole
  end
  
  def itemFromIndex(index)
	if index.valid?
	  @people[index.row]
	else
	  klass.new
	end
  end
  
  def newEditWidget(index, parent = nil)
	@editWidgetKlass.new(itemFromIndex(index), parent)
  end
end 

class DoctorModel < PersonModel
  def initialize(parent = nil)
	super(Doctor, EditDoctorWidget, parent)
  end
end

class PatientModel < PersonModel
  def initialize(parent = nil)
	super(Patient, EditPatientWidget, parent)
  end
end