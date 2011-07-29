# encoding: utf-8
require 'data_mapper'
require 'dm-is-tree'
require_relative 'ui_aware'

class ExamFieldGroup
  include DataMapper::Resource
  property :id, DataMapper::Property::Serial
  property :name, DataMapper::Property::String
  has n, :exam_fields
  is :tree, :order => :name
end


class ExamField
  include DataMapper::Resource
  
  property :id, DataMapper::Property::Serial
  property :name, DataMapper::Property::String
  property :widget, DataMapper::Property::String
  has n, :exam_values
  has n, :exam_sets, :through =>:exam_values
  belongs_to :exam_field_group
  
  def value(exam_set)
	self.exam_values(:exam_set => exam_set).first || ExamValue.new(:exam_field => self, :exam_set => exam_set)
  end
  
end



class ExamValue
  include DataMapper::Resource
  property :value, DataMapper::Property::String
  
  belongs_to :exam_field, :key => true
  belongs_to :exam_set, :key => true
  
  def name
	self.exam_field.name
  end
end

class ExamSet
  include DataMapper::Resource
  include UiAware
  
  property :id, DataMapper::Property::Serial
  property :date, DataMapper::Property::Date, :disp_name => 'Ημερομηνία'
  belongs_to :patient
  belongs_to :doctor
  has n, :exam_values
  has n, :exam_fields, :through => :exam_values
	
	def patient_name
		self.patient.full_name
	end
	
	def doctor_name
		self.doctor.full_name
	end
end
