# encoding: UTF-8
require 'rubygems'
require 'data_mapper' 
require_relative 'doctor'
require_relative 'person'

 
 class Patient
   include DataMapper::Resource
   include Person
   
   property :id, Serial
   property :name, String, :display_name => 'Όνομα'
   property :surname, String, :display_name => 'Επίθετο'
   
   belongs_to :doctor
   
 end