require 'singleton'
require 'Qt4'

class BasicModel < Qt::AbstractTableModel
  attr_reader :columnNames
  
  def initialize(parent, dataMapperCollection)
	super(parent)
	@sortColumn = 1
	@currentSortOrder = Qt::AscendingOrder
	
	@dataMapperCollection = dataMapperCollection 
	@klass = @dataMapperCollection.model
	
	#@columnNames = @klass.properties.collect {|p| [p.name, p.disp_name]}
	@items = @dataMapperCollection.all.to_a
  end
  
  def column_names
    @columnNames ||= @klass.properties.collect {|p| [p.name, p.disp_name]}
  end
	
	def sort_by_name(name, sortOrder)
		coll = @dataMapperCollection.all(:order => [name])
		coll = coll.reverse if sortOrder == Qt::DescendingOrder
		@items = coll.to_a
	end
	
	def sort(column, sortOrder)
		emit layoutAboutToBeChanged
		colName = column_names[column][0]
		sort_by_name(colName, sortOrder)
		emit layoutChanged
	end
  
  def rowCount(parent = nil)
	return 0 if not parent.nil? and parent.valid? 
	@items.count
  end
  
  def columnCount(parent = nil)
	column_names.count
  end
  
  def data(index, role = Qt::DisplayRole)
	return Qt::Variant.new if (not index.valid? or role != Qt::DisplayRole)	
	Qt::Variant.new(valueFromIndex(index)) if Qt::DisplayRole
  end
  
  def columnHeader(section)
	column_names[section][1]
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
	  @items[index.row]
	else
	  @klass.new
	end
  end
  
  def valueFromIndex(index)
		item = itemFromIndex(index)
		item.send(column_names[index.column][0])
  end
  


end 


    
   
