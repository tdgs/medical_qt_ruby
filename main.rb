# encoding: utf-8
#!/usr/bin/env ruby


require_relative 'init'



app = Qt::Application.new(ARGV)
d = DoctorListView.new
d.populate
puts d.class
d.show
app.exec

