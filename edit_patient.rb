# encoding: UTF-8
require 'Qt4'

class NewPatientWidget < Qt::Dialog
  
  def initialize(parent = nil)
	super(parent)
	setup_ui(parent)
  end
  
  def setup_ui(parent = nil)
	layout = Qt::FormLayout.new
	@name = Qt::LineEdit.new
	@surname = Qt::LineEdit.new
	@doctor = Qt::ComboBox.new do |combo|
	  Doctor.each {|d| combo.addItem(d.full_name, Qt::Variant.new(d.id))}
	end
	@button = Qt::DialogButtonBox.new(Qt::DialogButtonBox::Ok | Qt::DialogButtonBox::Cancel)
	@button.connect(:accepted, self, :save)
	@button.connect(:rejected, self, :reject)
	
	
	layout.addRow 'Όνομα', @name
	layout.addRow 'Επίθετο', @surname
	layout.addRow 'Ιατρός', @doctor
	layout.addRow @button
	setLayout(layout)
  end
  
  def save
	puts "Hello!"
	d = Doctor.get @doctor.itemData(@doctor.currentIndex).value
	p = Patient.new(:name =>@name.text, :surname => @surname.text)
	d.patients << p
	emit done(Qt::Dialog::Accepted) if d.save
  end
end