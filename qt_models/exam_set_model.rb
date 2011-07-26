require_relative './basic_model'
require_relative '../db_models'


class ExamSetModel < BasicModel
  def initialize(parent = nil, collection)
	super(parent, collection || ExamSet.all)
  end
end 
