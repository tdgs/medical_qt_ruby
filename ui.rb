

require_relative 'ui/edit_patient'
require_relative 'ui/edit_exam'
require_relative 'ui/edit_doctor'

Patient.editWidget = EditPatient
ExamSet.editWidget = EditExams
Doctor.editWidget = EditDoctor