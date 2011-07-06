# encoding: UTF-8
require 'Qt4'

class EditDoctorWidget < Qt::Dialog
  
  def initialize(doctor_id = nil, parent = nil)
	@d = Doctor.get(doctor_id) || Doctor.new
	super(parent)
	setup_ui(parent)
	
  end
  
  def setup_ui(parent = nil)
	layout = Qt::FormLayout.new 
	@name = Qt::LineEdit.new(@d.name, self)
	@surname = Qt::LineEdit.new(@d.surname, self)
	@button = Qt::DialogButtonBox.new(Qt::DialogButtonBox::Ok | Qt::DialogButtonBox::Cancel)
	@button.connect(:accepted, self, :save)
	@button.connect(:rejected, self, :reject)
	
	
	layout.addRow 'Όνομα', @name
	layout.addRow 'Επίθετο', @surname
	layout.addRow @button
	setLayout(layout)
  end
  
  def save
	puts "Hello!"
	@d.name = @name.text
	@d.surname = @surname.text
	emit done(Qt::Dialog::Accepted) if @d.save
  end
end