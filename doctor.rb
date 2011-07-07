 
require 'rubygems'
require 'data_mapper'
require_relative 'patient'
require_relative 'person'


 

 class Doctor 
   include DataMapper::Resource
   include Person
   
   property :id, Serial
   property :name, String
   property :surname, String
   has n, :patients
   
end 
 
 

   
