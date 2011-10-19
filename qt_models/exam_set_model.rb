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

  def do_sort(name)
    if name == :patient_name or name == :doctor_name
      coll = @dataMapperCollection.all
      coll.sort! do |a, b|
        a.send(name) <=> b.send(name)
      end
    else
      super(name)
    end
  end 
end
