# encoding: utf-8
require 'Qt4'
require_relative 'ui'

class MainWidget < Qt::TabWidget
  
  def initialize(parent = nil)
	super(parent)
	setup_ui
  end
  
  def setup_ui
	@doctorTab = DoctorTab.new(self)
	@patientTab = PatientTab.new(self)
	self.addTab(@doctorTab, 'Ιατροί')
	self.addTab(@patientTab, 'Ασθενείς')
  end
end

class DoctorTab < Qt::Widget
  def initialize(parent = nil)
	super(parent)
	@doctorList = DoctorList.new(self)
	@layout = Qt::GridLayout.new
	@layout.addWidget(@doctorList, 0,0)
  end
end

class PatientTab < Qt::Widget
  def initialize(parent = nil)
	super(parent)
	@patientList = PatientList.new(self)
  end
end



