require 'rubygems'
require 'data_mapper'
require 'Qt4'

class Person 
   include DataMapper::Resource
   
   property :id, Serial
   property :name, String
   property :surname, String
end
   
