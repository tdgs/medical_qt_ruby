 
require 'rubygems'
require 'data_mapper'
require_relative 'patient'
require_relative 'person'


 

 class Doctor 
   include Person
   has n, :exam_sets
   has n, :patients, :through => :exam_sets
end 
 
 

   
