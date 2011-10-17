# encoding: utf-8
require_relative 'person_main'
class DoctorsMainWidget < PersonMainWidget
  
  def initialize(parent = nil)
    super(parent)
    @model = DoctorModel
    @klass = Doctor
    @resultsTableKlass = DoctorTable
    setup_ui
    @ui.titleLabel.text = '<center><h1>Ιατροί</h1></center>'
  end
end
