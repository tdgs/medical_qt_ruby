require_relative 'doctor'

class DoctorModel < Qt::AbstractListModel
  
  def initialize(parent =nil)
	puts "Initializer!!"
	super
	@doctors = Doctor.all(:order => [:surname.desc]).to_a
  end
    
  def rowCount(parent)
	@doctors.count
  end
   
  def data(index, role = Qt::DisplayRole)
	return Qt::Variant.new if (not index.valid? or role != Qt::DisplayRole)
	return Qt::Variant.new("#{@doctors[index.row].full_name}")
  end
  
   
end 
