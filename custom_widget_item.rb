require 'Qt4'

class CustomWidgetItem < Qt::ListWidgetItem
  
  attr_accessor :custom_data
 def initialize(data = nil, list = nil)
	@custom_data = data
	super(data.to_s, nil, Qt::ListWidgetItem::UserType)
  end
end
