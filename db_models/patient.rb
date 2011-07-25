# encoding: UTF-8
require 'rubygems'
require 'data_mapper' 
require_relative 'doctor'
require_relative 'person'
require_relative 'ui_aware'

 
 class Patient
   include Person
   include UiAware
   has n, :doctors, :through => :exam_sets
   has n, :exam_sets
 end
 
 
