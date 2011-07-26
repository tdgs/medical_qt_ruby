require_relative 'edit_patient_ui'


class EditPatient < Qt::Widget
  
  def initialize(parent = nil, patient)
    super(parent)
    @patient = patient
    @ui = Ui::PatientForm.new(self)
  end
  
  def load_from_model
    transfer_data(@patient, @ui)
    @ui.examSetTable.model = ExamSetModel.new(self, @patient.exam_sets)
  end
  
  def load_from_ui
    transfer_data(@ui, @patient)
  end
  
  def transfer_data(src, dst)
    src.name = dst.name
    src.surname = dst.surname
    src.address = dst.address
    src.birthDate = dst.birthDate
    src.notes = dst.notes
  end
  
end
