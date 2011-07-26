require_relative './basic_model'
require_relative '../db_models'

class PatientModel < BasicModel
  def initialize(parent = nil, collection = nil)
	super(parent, collection || Patient.all)
  end
end



