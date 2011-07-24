require_relative './basic_model'
require_relative '../db_models'

class PatientModel < PersonModel
  def initialize(parent = nil, collection = nil)
	super(parent, collection, Patient, nil)
  end
end
