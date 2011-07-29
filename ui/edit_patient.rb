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
		load_from_db
		@ui.examSetTable.model = ExamSetModel.new(self, @item.exam_sets.all)
	end
	
	def save
		box = Qt::MessageBox.new
		msg = (save_to_db and 'Οι αλλαγές αποθηκεύτηκαν') || 'Υπήρξε κάποιο πρόβλημα στην αποθήκευση'
		box.text = msg
		box.exec
	end
end
