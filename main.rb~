# encoding: utf-8
#!/usr/bin/env ruby


require_relative 'init'
require_relative 'mainWidget'



app = Qt::Application.new(ARGV)
Qt.debug_level = Qt::DebugLevel::High
mainWindow = Qt::MainWindow.new
mainWindow.centralWidget = MainWidget.new(mainWindow)
mainWindow.show
app.exec





