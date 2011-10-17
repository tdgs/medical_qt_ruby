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

  alias :basic_sort :sort

  def sort(column, sortOrder)
    colName= column_names[column][0]
    if colName == :id or colName == :date
      sort_by_name(colName, sortOrder)
    elsif colName == :patient_name
      sort_by_name(ExamSet.patient.surname, sortOrder)
    elsif colName == :doctor_name
      sort_by_name(ExamSet.doctor.surname, sortOrder)
    end
  end

end 
