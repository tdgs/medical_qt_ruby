require_relative 'db_models'
require_relative 'ui/main_window.rb'

app = Qt::Application.new(ARGV)
Qt.debug_level = Qt::DebugLevel::High
mainWindow = MainWindow.new
mainWindow.show
app.exec
