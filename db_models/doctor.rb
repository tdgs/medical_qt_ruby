 
require 'rubygems'
require 'data_mapper'
require_relative 'patient'
require_relative 'person'
require_relative 'ui_aware'


 

 class Doctor 
   include Person
   include UiAware
   has n, :exam_sets
   has n, :patients, :through => :exam_sets
end 
 
 

   
