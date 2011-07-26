require_relative 'ui_files/search_widget_ui'
require_relative '../qt_views/tableview'

class SearchWidget < Qt::Widget
  def initialize(parent = nil)
	super(parent)
	@ui = SearchForm.new
	@ui.setup_ui(self)
  end
end
