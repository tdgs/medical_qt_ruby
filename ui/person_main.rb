# encoding: utf-8
require_relative 'ui_files/person_main_ui'
require_relative 'search_screen'

class PersonMainWidget < Qt::Frame

  include SearchScreen

  def initialize(parent = nil)
    super(parent)
    Qt::Object.connect(self, SIGNAL('edit_request(QVariant&)'), $mainWindow, SLOT('edit_item(QVariant&)'))
  end
  
  def setup_ui
    @ask = true
    @ui = Ui::PersonFrame.new(self)
    @ui.setup_ui(self)
    setResultsTable
    show_all
    @optionsHash = SearchOptionHash.new([[:name, @ui.name],
                                               [:surname, @ui.surname], 
                                               [:address, @ui.address],
                                               [:phone, @ui.phone]])
                                               #[:email, @ui.email],
                                               #[:birthDate, @ui.birthDate, {:validation => :isEnabled}]])
  end
end
