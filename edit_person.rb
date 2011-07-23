# encoding: UTF-8
require_relative 'db_models'
require_relative 'ui/edit_doctor'

class EditDoctor < Qt::Dialog
  
  FieldSet = [:name, :surname, :phone, :address]
  slots :save
  
  def initialize(doctor = nil, parent = nil)
	super(parent)
	self.objectName = 'Καρτέλα Ιατρού'
	@doctor = doctor || Doctor.new
	@ui = Ui::EditDoctorUi.new(@doctor)
	@ui.setup_ui(self, @doctor)
	setDoctor
  end
  
  def loadDoctor
	FieldSet.each do |field|
	  @doctor.send(field.to_s + '=', @ui.send(field).text)
	end
  end
  
  def setDoctor
	FieldSet.each do |field|	  
	  @ui.send(field).text = @doctor.send(field)
	end
  end
  
  def accept()
	puts 'accept'
	loadDoctor
	puts @doctor.inspect
	if @doctor.save
	  emit done(Qt::Dialog::Accepted)
	else
	  Qt::MessageBox.new('Υπήρξε πρόβλήμα στην αποθήκευση').exec
	end
  end
  
end


