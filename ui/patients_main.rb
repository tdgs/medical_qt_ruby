# encoding: utf-8
require_relative 'person_main'
class PatientsMainWidget < PersonMainWidget
  
  def initialize(parent = nil)
    super(parent)
    @model = PatientModel
    @klass = Patient
    @resultsTableKlass = PatientTable
    setup_ui
    @ui.titleLabel.text = '<center><h1>Ασθενείς</h1></center>'
  end
end
