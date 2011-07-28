require 'Qt'

class MyDateWidget < Qt::DateEdit
  
  def text
	self.date.to_s
  end
end
