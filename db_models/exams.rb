require 'data_mapper'
require 'dm-is-tree'

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
  
  property :id, DataMapper::Property::Serial
  property :date, DataMapper::Property::Date
  belongs_to :patient, :key 
  has n, :exam_values
  has n, :exam_fields, :through => :exam_values
end
