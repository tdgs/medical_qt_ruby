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
  
  def do_sort(name)
    if  name == :date_last_visit
      coll = @dataMapperCollection.all
      coll.sort! do |a, b|
        d1 = a.date_last_visit
        d2 = b.date_last_visit
        return 1  unless d1.is_a? Date
        return -1 unless d2.is_a? Date
        d1 <=> d2
      end
    else
      super(name)
    end
  end
	
end





