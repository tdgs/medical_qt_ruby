# encoding: utf-8
require_relative 'my_date_widget/'
require_relative 'ui_files/edit_doctor_ui'
require_relative '../lib/db_model_widget'


class EditDoctor < Qt::Widget
  slots "save()"
  include DataBaseModelWidget
  include ExcelExporter
	
  def initialize(parent = nil, doctor)
		puts 'patientForm!!'
		super(parent)
		@item = doctor
		@ui = Ui::DoctorForm.new(self)
		@ui.setup_ui(self)
		@attributes = [:name, :surname, :address,  :phone]
	end	
	
	def load_relationships
	  @ui.patientTable.model = PatientModel.new(self, @item.patients.all)
	end

end
