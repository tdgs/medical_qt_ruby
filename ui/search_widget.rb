require_relative 'ui_files/searchWidget_ui'
require_relative '../qt_views/views'
require_relative 'my_date_widget'


class SearchWidget < Qt::Widget
  slots "searchPatient()"
  def initialize(parent = nil)
	super(parent)
	@ui = Ui::SearchForm.new
	@ui.setup_ui(self)
	@patientOptionsHash = SearchOptionHash.new([[:name, @ui.patientName],
	                       [:surname, @ui.patientSurname], 
	                       [:address, @ui.patientAddress],
	                       [:phone, @ui.patientPhone],
	                       [:email, @ui.patientEmail],
	                       [:birthDate, @ui.patientBirthDate, {:validation => :isEnabled}]])
  end
  
  def searchPatient
	options = @patientOptionsHash.to_search_hash
	puts options
	@ui.patientTable.model =  PatientModel.new(self, Patient.all(options))
  end
end


class SearchOptionHash < Hash
  def initialize(optsArray)
	optsArray.each {|field| self[field[0]] = SearchOption.new(field[1], field[2])}
  end
  
  def to_search_hash
	options = Hash.new
	self.each { |k, v| options[k] = v.value if v.valid?}
	return options
  end
end



class SearchOption
  attr_accessor :widget, :valueMethod, :validationMethod
  
  def initialize(widget, args = Hash.new)
	@widget = widget
	args ||= Hash.new
	@valueMethod = args[:value] || :text
	@validationMethod = args[:validation] || :modified
  end
  
  def valid? 
	@widget.send(@validationMethod)   
  end
  
  def value
	(self.valid? and @widget.send(@valueMethod)) || nil
  end
end
	

