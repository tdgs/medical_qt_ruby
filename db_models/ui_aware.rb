
module UiAware
  def self.included(base)
	base.class_eval do
	  class << self 
		attr_accessor :editWidget
	  end
	  
	  def newEditWidget(parent)
		self.class.editWidget.new(parent, self)
	  end
	end
  end
end
