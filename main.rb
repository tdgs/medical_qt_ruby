# encoding: utf-8
#!/usr/bin/env ruby


require_relative 'db_models'
require 'Qt4'
require_relative 'listview'



app = Qt::Application.new(ARGV)
d = PatientList.new
d.show
app.exec





