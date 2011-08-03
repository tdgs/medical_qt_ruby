# encoding: utf-8
require_relative './basic_model'
require_relative '../db_models'

class PatientModel < BasicModel
  def initialize(parent = nil, collection = nil)
	super(parent, collection || Patient.all)
  end
	
	def collect_columnNames
		super << [:date_last_visit, 'Ημ. Τελευταίας Επίσκεψης']
	end
	
end





