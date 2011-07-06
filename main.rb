# encoding: utf-8
#!/usr/bin/env ruby


require_relative 'db_models'
require 'Qt4'
require_relative 'edit_patient'
require_relative 'edit_doctor'
require_relative 'listview'



app = Qt::Application.new(ARGV)
d = DoctorListView.new
d.populate
puts d.class
d.show
app.exec




