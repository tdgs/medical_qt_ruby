
def my_translate(string, n)
  string
end

require_relative 'ui/edit_patient'
require_relative 'ui/edit_exam'
require_relative 'ui/edit_doctor'
require_relative 'ui/visit'
require_relative 'ui/patients_main'

Patient.editWidget = EditPatient
ExamSet.editWidget = EditVisit
Doctor.editWidget = EditDoctor

