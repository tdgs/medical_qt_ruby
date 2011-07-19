# encoding: UTF-8
require_relative 'db_models'
require_relative 'ui/edit_doctor'

class EditDoctor < Qt::Dialog
  def initialize(doctor = nil, parent = nil)
	super(parent)
	@ui = Ui::Dialog.new
	@ui = setup_ui(self)
  end
end


