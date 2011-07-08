# encoding: UTF-8
require_relative 'db_models'
require 'Qt4'

class EditPersonWidget < Qt::Dialog
  
  def initialize(klass, person, parent = nil)
	@p = person || klass.new
	super(parent)
	setup_ui(parent)
  end
  
  def setup_ui(parent = nil)
	layout = Qt::FormLayout.new 
	@name = Qt::LineEdit.new(@p.name, self)
	@surname = Qt::LineEdit.new(@p.surname, self)
	@button = Qt::DialogButtonBox.new(Qt::DialogButtonBox::Ok | Qt::DialogButtonBox::Cancel)
	@button.connect(:accepted, self, :save)
	@button.connect(:rejected, self, :reject)
	
	
	layout.addRow 'Όνομα', @name
	layout.addRow 'Επίθετο', @surname
	layout.addRow @button
	setLayout(layout)
  end
  
  def save
	@p.name = @name.text
	@p.surname = @surname.text
	if @p.save 
	  accept
	else
	  reject
	end
  end
  
end



class EditDoctorWidget < EditPersonWidget
  
  def initialize(doctor, parent = nil)
	super(Doctor, doctor, parent)
  end
end

class EditPatientWidget < EditPersonWidget
  def initialize(patient, parent = nil)
	super(Patient, patient, parent)
  end
  
  def setup_ui(parent = nil)
	super(parent)
	
	@doctorComboBox = Qt::ComboBox.new
	@doctorComboBox.setModel(DoctorModel.new)
	layout.insertRow layout.rowCount-1, 'Ιατρός', @doctorComboBox
  end
end
