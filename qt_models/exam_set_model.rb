# encoding: utf-8
require_relative './basic_model'
require_relative '../db_models'


class ExamSetModel < BasicModel
  def initialize(parent = nil, collection)
		super(parent, collection || ExamSet.all)
		@columnNames = [[:id, 'Α/Α'],
		                [:date, 'Ημερομηνία'],
		                [:patient_name, 'Ασθενής'],
		                [:doctor_name, 'Ιατρός']]  
  end
	
end 
