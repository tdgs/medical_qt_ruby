require_relative 'ui_files/searchWidget_ui'
require_relative '../qt_views/views'
require_relative 'my_date_widget'


class SearchWidget < Qt::Widget
  
	slots "searchExamSet()", "searchDoctor()", "searchPatient()"
	signals "edit_request(QVariant&)"
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
		@examSetOptionHash = SearchOptionHash.new([[ExamSet.patient.surname, @ui.examSetPatient],
		                                           [ExamSet.doctor.surname, @ui.examSetDoctor],
		                                           [:date, [@ui.examSetFromDate,@ui.examSetToDate], {:validation => :isEnabled}]])
		@doctorOptionHah = SearchOptionHash.new([[:name, @ui.doctorName],
		                                            [:surname,@ui.doctorSurname],
		                                            [:address, @ui.doctorAddress],
		                                            [:phone, @ui.doctorPhone],
		                                            [:email, @ui.doctorEmail]])
		
	end
	
	def edit_request(variant)
	  emit edit_request(variant)
	end
	
	def searchPatient
		options = @patientOptionsHash.to_search_hash
		puts options
		@ui.patientTable.model =  PatientModel.new(self, Patient.all(options))
	end
	
	
	def searchExamSet
		options = @examSetOptionHash.to_search_hash
		puts options
		@ui.examSetTable.model = ExamSetModel.new(self, ExamSet.all(options))
	end
	
	def searchDoctor
		options = @doctorOptionHah.to_search_hash
		@ui.doctorTable.model = DoctorModel.new(self, Doctor.all(options))
	end
end


class SearchOptionHash < Hash
	def initialize(optsArray)
		optsArray.each {|field| self[field[0]] = SearchOption.new(field[1], field[2])}
	end
	
	def to_search_hash
		options = Hash.new
		self.each do |k, v|
			value = v.value
			if value.is_a? Array
				options[k.send(:gte)] = value[0] unless value[0].nil?
				options[k.send(:lte)] = value[1] unless value[1].nil?
			else
				options[k.send(:like)] = "%#{value}%" unless value.nil?
			end
		end
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
	
	def value
		(@widget.is_a? Array and @widget.map {|w| widget_value(w)}) || widget_value(@widget)
	end
	
	def widget_value(widget) 
		(widget.send(@validationMethod) and widget.send(@valueMethod)) || nil
	end
end
