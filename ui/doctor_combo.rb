require 'Qt'

class DoctorComboBox < Qt::ComboBox
    def initialize
        super(parent)
        self.editable = true
        
end
