# encoding: UTF-8
require 'rubygems'
require 'data_mapper' 
require_relative 'doctor'
require_relative 'person'
require_relative 'ui_aware'


 
 class Patient
   include Person
   include UiAware
   has n, :doctors, :through => :exam_sets, :constraint => :skip
   has n, :exam_sets, :constraint => :destroy
	 
	 
	 def get_date_of_last_visit
		 e = self.exam_sets.first(:order => :date.desc)
		 date = (e and e.date) || " "
	 end

	 def date_last_visit
		 @date_last_visit ||= get_date_of_last_visit
	 end
   
 end
 
 
