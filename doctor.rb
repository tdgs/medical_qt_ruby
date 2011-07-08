 
require 'rubygems'
require 'data_mapper'
require_relative 'patient'
require_relative 'person'


 

 class Doctor 
   
   include Person
   has n, :patients
   
end 
 
 

   
