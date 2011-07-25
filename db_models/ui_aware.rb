
module UiAware
  def self.included(base)
	base.class_eval do
	  @@editWidget = nil
	  def self.editWidget
		@@editWidget 
	  end
	end
  end
end
