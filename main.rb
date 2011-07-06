# encoding: utf-8
#!/usr/bin/env ruby


require_relative 'db_models'
require 'Qt4'
require_relative 'edit_patient'
require_relative 'edit_doctor'
require_relative 'listview'


Qt::Application.new(ARGV) do
   d = DoctorListView.new do
	show
  end
  exec
end






