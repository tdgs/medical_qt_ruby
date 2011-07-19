require 'singleton'
require_relative 'db_models'
require 'Qt4'

class PersonModel < Qt::AbstractTableModel
  
  attr_reader :columnNames

  
  def initialize(klass, editWidgetKlass, parent = nil, dataMapperCollection = nil)
	super(parent)
	@sortColumn = 1
	@collection = 
	@currentSortOrder = Qt::AscendingOrder
	@klass = klass
	@editWidgetKlass = editWidgetKlass
	@dataMapperCollection = dataMapperCollection || @klass.all
	@columnNames = @klass.properties.collect {|p| [p.name, p.disp_name]}
	load_from_db
  end

  def order2str(order)
	return 'desc' if order == Qt::DescendingOrder
	return 'asc'
  end
  
  def load_from_db(sortColumn = @sortColumn, sortOrder = @currentSortOrder)
	@sortColumn = sortColumn
	@currentSortOrder = sortOrder
	columnName = @columnNames[sortColumn][0]
	emit layoutAboutToBeChanged
	@people = @dataMapperCollection.all(:order => [columnName.send(order2str(sortOrder))]).to_a
	emit layoutChanged
  end
  
  
  def rowCount(parent = nil)
	return 0 if not parent.nil? and parent.valid? 
	@people.count
  end
  
  def columnCount(parent = nil)
	@columnNames.count
  end
  
  def sort(column, order = Qt::AscendingOrder)
	load_from_db(column, order)
  end
  
   
  def data(index, role = Qt::DisplayRole)
	return Qt::Variant.new if (not index.valid? or role != Qt::DisplayRole)	
	Qt::Variant.new(valueFromIndex(index)) if Qt::DisplayRole
  end
  
  def columnHeader(section)
	@columnNames[section][1]
  end
	
  
  def headerData(section, orientation, role)
	
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
	  @klass.new
	end
  end
  
  def valueFromIndex(index)
	item = itemFromIndex(index)
	item.send(@columnNames[index.column][0])
  end
  
  def newEditWidget(index, parent = nil)
	rc = self.rowCount
	load_from_db if  @editWidgetKlass.new(itemFromIndex(index), parent).exec
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