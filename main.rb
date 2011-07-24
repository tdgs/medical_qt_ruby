require_relative 'db_models'
require_relative 'ui/main_window.rb'

app = Qt::Application.new(ARGV)
mainWindow = MainWindow.new
mainWindow.show
app.exec
