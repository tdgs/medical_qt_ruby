require 'singleton'
require_relative 'db_models'
require 'Qt4'

class PersonModel < Qt::AbstractTableModel
  
  attr_reader :columnNames
  include Singleton
  
  def initialize(klass, editWidgetKlass, parent = nil)
	
	@klass = klass
	@editWidgetKlass = editWidgetKlass
	@people = @klass.all
	@columnNames = @klass.properties.collect {|p| [p.name, p.disp_name]}
	load_from_db
	super(parent)
  end
  
  def load_from_db
	@people = @klass.all.to_a
  end
  
  
  def rowCount(parent = nil)
	@people.count
  end
  
  def columnCount(parent = nil)
	@columnNames.count
  end
  
   
  def data(index, role = Qt::DisplayRole)
	return Qt::Variant.new if (not index.valid? or role != Qt::DisplayRole)	
	Qt::Variant.new(valueFromIndex(index)) if Qt::DisplayRole
  end
  
  def columnHeader(section)
	@columnNames[section][1]
  end
  
  def headerData(section, orientation, role)
	puts section
	return Qt::Variant.new if section >= columnCount or role != Qt::DisplayRole
	if orientation == Qt::Horizontal
	  Qt::Variant.new(columnHeader(section))
	else 
	  Qt::Variant.new
	end
  end
  
  def itemFromIndex(index)
	if index.valid?
	  @people[index.row]
	else
	  klass.new
	end
  end
  
  def valueFromIndex(index)
	item = itemFromIndex(index)
	item.send(@columnNames[index.column][0])
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