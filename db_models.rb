require 'rubygems'
require 'data_mapper'

class DataMapper::Property
  
  accept_options :disp_name
  def disp_name
	options[:disp_name] || self.name
  end
  
end  

DataMapper::Logger.new($stdout, :debug)
DataMapper::setup(:default, 'sqlite:medical.db')

require_relative 'doctor'
require_relative 'patient'
DataMapper.finalize
DataMapper.auto_upgrade!

