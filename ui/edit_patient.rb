# encoding: utf-8
require_relative 'my_date_widget/'
require_relative 'edit_patient_ui'
require_relative '../qt_models/exam_set_model'
require_relative '../lib/db_model_widget'


class EditPatient < Qt::Widget
  slots "save()"
  include DataBaseModelWidget
	
  def initialize(parent = nil, patient)
		puts 'patientForm!!'
		super(parent)
		@item = patient
		@ui = Ui::PatientForm.new(self)
		@ui.setup_ui(self)
		@attributes = [:name, :surname, :address,  :phone, :birthDate, :notes]
	end	
	
	def load_relationships
	  @ui.examSetTable.model = ExamSetModel.new(self, @item.exam_sets.all)
	end
end
