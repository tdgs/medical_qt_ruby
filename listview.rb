begin

  
end
require 'Qt4'
require_relative 'custom_widget_item'
require_relative 'edit_doctor'


class DoctorListView < Qt::ListWidget
  
  slots 'activated(QListWidgetItem*)'
  def initialize(parent = nil)
	super(parent)
	#populate
	Qt::Object.connect(self, SIGNAL('itemActivated(QListWidgetItem*)'), self, SLOT('activated(QListWidgetItem*)'))
  end
  
  def populate
	list = self
	@widgets = Doctor.all.collect do |d|
	  w =   CustomWidgetItem.new(d)
	end
	@widgets.each {|w| list.addItem(w)}
  end  
  
  def activated(widget)
	doctor = widget.custom_data
	docEditor = EditDoctorWidget.new(doctor, self)
	if docEditor.exec
	  puts 'Update'
	  widget.text = doctor.to_s
	  emit itemChanged(widget)
	end
	
  end
 

end


