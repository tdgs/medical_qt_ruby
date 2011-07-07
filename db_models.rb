require 'rubygems'
require 'data_mapper'

class DataMapper::Property
  accept_options :display_name
  
  def display_name
	options[:display_name] || self.name.to_s
  end
end  

DataMapper::Logger.new($stdout, :debug)
DataMapper::setup(:default, 'sqlite:medical.db')

require_relative 'patient'
require_relative 'doctor'
DataMapper.finalize
DataMapper.auto_upgrade!

