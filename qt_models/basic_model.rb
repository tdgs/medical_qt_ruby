require 'singleton'
require 'Qt4'

class PersonModel < Qt::AbstractTableModel
  attr_reader :columnNames
  
  def initialize(parent, dataMapperCollection, klass, editWidgetKlass)
	super(parent)
	@sortColumn = 1
	@currentSortOrder = Qt::AscendingOrder
	@klass = klass
	@editWidgetKlass = editWidgetKlass
	@dataMapperCollection = dataMapperCollection || @klass.all
	
	@columnNames = @klass.properties.collect {|p| [p.name, p.disp_name]}
	@items = @dataMapperCollection.all.to_a
  end
  
  def order2str(order)
	return 'desc' if order == Qt::DescendingOrder
	return 'asc'
  end
  
  def rowCount(parent = nil)
	return 0 if not parent.nil? and parent.valid? 
	@items.count
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
	item.send(@columnNames[index.column][0])
  end
  
  def newEditWidget(parent = nil, index)
	unless @editWidgetKlass.nil?
	  @editWidgetKlass.new(itemFromIndex(index), parent).exec
	end
  end
  
  def new_item
	puts 'new_item'
	newEditWidget(Qt::ModelIndex.new, self)
  end
end 


    
   
