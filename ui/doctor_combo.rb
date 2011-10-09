require 'Qt'

class DoctorComboBox < Qt::ComboBox
    def initialize
        super(parent)
        self.editable = true
    end

    def text=(t)
      self.editText = t
    end
    
end
