require_relative 'doctor_model'

class DoctorListView < Qt::ListWidget
  
  def initialize(parent = nil)
	@doctors = Doctor.all.collect do |d|
	  d.to_widget_item(self)
	end
  end
end
