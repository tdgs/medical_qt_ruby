
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

Qt::Base.class_eval do

  def menuActions
    @menuActions ||= []
  end


  def addMenuAction(action)
    self.addAction(action)
    self.menuActions.push(action)
  end

  def findMenuActions
    allActions = menuActions
    self.children.inject(allActions) do |actions, child|
      actions.concat child.findMenuActions
    end
    return allActions
  end
end

