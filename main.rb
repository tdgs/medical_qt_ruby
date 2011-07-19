# encoding: utf-8
#!/usr/bin/env ruby


require_relative 'init'
require_relative 'mainWindow'



app = Qt::Application.new(ARGV)
#Qt.debug_level = Qt::DebugLevel::High
mainWindow = MainWindow.new
mainWindow.show
app.exec





