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
	l = Qt::VBoxLayout.new
	
	@tabs = Qt::TabWidget.new
	@tabs.addTab(mainInfoWidget(@tabs), 'Πληροφορίες')
	
	@button = Qt::DialogButtonBox.new(Qt::DialogButtonBox::Ok | Qt::DialogButtonBox::Cancel)
	@button.connect(:accepted, self, :save)
	@button.connect(:rejected, self, :reject)
	
	l.addWidget(@tabs)
	l.addWidget(@button)
	self.Layout = l
	resize(400,400)
  end
  
  def mainInfoWidget(parent = nil)
	@mainInfoWidget = Qt::Widget.new(parent)
	mainInfoLayout = Qt::GridLayout.new
	formLayoutLeft = Qt::FormLayout.new
	formLayoutRight = Qt::FormLayout.new
	
	@name = Qt::LineEdit.new(@p.name)
	@surname = Qt::LineEdit.new(@p.surname)
	formLayoutLeft.addRow 'Όνομα', @name
	formLayoutRight.addRow 'Επίθετο', @surname
	mainInfoLayout.addLayout(formLayoutLeft, 0, 0)
	mainInfoLayout.addLayout(formLayoutRight, 0, 1)
	@mainInfoWidget.setLayout(mainInfoLayout)
	return @mainInfoWidget
  end
  
  def save
	@p.name = @name.text
	@p.surname = @surname.text
	@p.save ? accept : reject
  end
  
end

class EditDoctorWidget < EditPersonWidget
  
  def initialize(doctor, parent = nil)
	super(Doctor, doctor, parent)
	@tabs.addTab(PatientList.new(nil, doctor.patients), 'Ασθενθείς')
  end
  
end

class EditPatientWidget < EditPersonWidget
  def initialize(patient, parent = nil)
	super(Patient, patient, parent)
  end
  
  def setup_ui(parent = nil)
	super(parent)
	
  end
end
