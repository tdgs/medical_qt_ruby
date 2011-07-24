# encoding: UTF-8
require 'rubygems'
require 'data_mapper' 
require_relative 'doctor'
require_relative 'person'

 
 class Patient
   include Person
   has n, :doctors, :through => :exam_sets
   has n, :exam_sets
 end
 
 
