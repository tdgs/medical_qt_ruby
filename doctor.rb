 
require 'rubygems'
require 'data_mapper'
require_relative 'patient'

require_relative 'custom_widget_item'
 

 class Doctor 
   include DataMapper::Resource
   
   property :id, Serial
   property :name, String
   property :surname, String
   has n, :patients
   
   def full_name
	 self.name + " " + self.surname
   end
   
   def value
	 id
   end
   
   
   def to_s
	 full_name
   end
 end 
 
 

   
