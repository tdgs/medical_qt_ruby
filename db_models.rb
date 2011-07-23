# encoding: utf-8
require 'rubygems'
require 'data_mapper'

class DataMapper::Property
  
  accept_options :disp_name
  def disp_name
	options[:disp_name]  || nil
  end
  
  def disp_name=(name)
	options[:disp_name] = name
  end
  
end  

DataMapper::Logger.new($stdout, :debug)
DataMapper::setup(:default, 'sqlite:medical.db')

require_relative 'db_models/doctor'
require_relative 'db_models/patient'
require_relative 'db_models/exams'
DataMapper.finalize
DataMapper.auto_upgrade!

require_relative 'db_models/exam_init_data'



