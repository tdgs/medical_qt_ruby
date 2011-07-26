require_relative 'edit_patient_ui'
require_relative '../qt_models/exam_set_model'


class EditPatient < Qt::Widget
  Attrs = %w(name, surname, address, birthDate, notes)
  
  def initialize(parent = nil, patient)
	puts 'patientForm!!'
    super(parent)
    @patient = patient
    @ui = Ui::PatientForm.new(self)
	@ui.setup_ui(self)
	load_from_model
  end
  
  def load_from_model
	@ui.name.text = @patient.name
	@ui.surname.text = @patient.surname
	@ui.address.text = @patient.address
	@ui.birthDate.date = Qt::Date.fromString(@patient.birthDate.to_s, 'YYYY-MM-DD')
	@ui.notes.text = @patient.notes
  end
  
	  
end
