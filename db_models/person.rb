# encoding: utf-8
require 'rubygems'
require 'data_mapper' 

module Person
  def self.included(base)
	base.class_eval do
	  include DataMapper::Resource
	  property :id, DataMapper::Property::Serial, :disp_name => 'Κωδικός'
	  property :name, DataMapper::Property::String, :disp_name => 'Όνομα'
	  property :surname, DataMapper::Property::String, :disp_name => 'Επώνυμο'
	  property :address, DataMapper::Property::String, :disp_name => 'Διεύθυνση'
	  property :phone, DataMapper::Property::String, :disp_name => 'Τηλέφωνο'
	  property :email, DataMapper::Property::String, :disp_name => 'email'
	  property :notes, DataMapper::Property::Text, :disp_name => 'Σχόλια'
	  property :birthDate, DataMapper::Property::Date, :disp_name => 'Ημ. Γέννησης'
	end
  end
  
  def full_name
	"#{self.name} #{self.surname}"
  end
  
  def age
 	Date.today.year - self.birthDate.year
  end
  
  def to_s
	full_name
  end
end