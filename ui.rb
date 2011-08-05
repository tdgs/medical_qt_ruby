

require_relative 'ui/edit_patient'
require_relative 'ui/edit_exam'
require_relative 'ui/edit_doctor'
require_relative 'ui/visit'

Patient.editWidget = EditPatient
ExamSet.editWidget = EditVisit
Doctor.editWidget = EditDoctor
