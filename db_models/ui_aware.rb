
module UiAware
  def self.included(base)
	base.class_eval do
	  @@editWidget = nil
	  def self.editWidget
		@@editWidget 
	  end
	  
	  def self.editWidget=(widget)
		@@editWidget = widget
	  end
	  
	  def newEditWidget(parent)
		self.class.editWidget.new(parent, self)
	  end
	end
  end
end
