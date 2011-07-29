require 'Qt'

class MyTextEdit < Qt::TextEdit
	def text
		self.html
	end
	def text=(val)
		self.html = val.to_s
	end
end
module DataBaseModelWidget
	
	attr_accessor :attributes
	attr_accessor :ui
	attr_accessor :item
	
	def load_from_db
		attributes.each do |attr|
			puts  "loading  #{attr}: #{item.send(attr)}"
			@ui.send(attr).text = item.send(attr)
		end
	end
	
	def save_to_db
		attributes.each do |attr|
			item.send(attr.to_s + '=', @ui.send(attr).text) 
		end
		item.save
	end
end
