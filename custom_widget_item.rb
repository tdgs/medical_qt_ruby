require 'Qt4'

class CustomWidgetItem < Qt::ListWidgetItem
  
  attr_accessor :data
  def initialize(data = nil, list = nil)
	@data = data
	super(data.to_s, list, Qt::ListWidgetItem::UserType)
  end
end
