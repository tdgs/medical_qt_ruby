require_relative 'db_models'
require_relative 'ui/main_window.rb'

require_relative 'ui'

app = Qt::Application.new(ARGV)
#Qt.debug_level = Qt::DebugLevel::High
puts "Main: #{ $lala.inspect}"
$lala = 7

$mainWindow = MainWindow.new
$mainWindow.setup_ui
$mainWindow.show
app.exec
