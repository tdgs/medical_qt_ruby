require_relative 'db_models'
require_relative 'ui/main_window.rb'

require_relative 'ui'

app = Qt::Application.new(ARGV)
#Qt.debug_level = Qt::DebugLevel::High
mainWindow = MainWindow.instance
mainWindow.show
app.exec
