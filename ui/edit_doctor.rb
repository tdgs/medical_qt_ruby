# encoding: utf-8
require_relative 'my_date_widget/'
require_relative 'ui_files/edit_doctor_ui'
require_relative 'doctor_excel_export'
require_relative '../lib/db_model_widget'
require 'spreadsheet'


class EditDoctor < Qt::Widget
	slots "save()"
	include DataBaseModelWidget
	include ExcelExporter

	def initialize(parent = nil, doctor)
		puts 'patientForm!!'
		super(parent)
		@item = doctor
		@ui = Ui::DoctorForm.new
		@ui.setup_ui(self)
		@attributes = [:name, :surname, :address,  :phone]
		enable_excel_action(:action_name => 'Αναφορά Ασθενών Ιατρού', :dialog_klass => DoctorReportExport)
	end	

	def load_relationships
		@ui.patientTable.model = PatientModel.new(self, @item.patients.all)
	end

	def write_excel(book, *options)
		items = get_items(options[0])
		header = ::Spreadsheet::Format.new :weight => :bold, :size => 16

		sheet = book.create_worksheet :name => 'Επισκέψεις'
		sheet.row(0).default_format = header
		sheet.row(0).push 'Αναφορά Επισκέψεων Ιατρού'
		sheet[1,0] = 'Ιατρός:'
		sheet[1,1] = @item.full_name
		sheet.row(3).concat %w(Ημερομηνία Ονοματεπώνυμο\ Ασθενή)
		sheet[4,0] = 'Συνολικό επισκέψεων:'
		sheet[4,1] = items.count

		r = 5
		items.each do |i|
			sheet.row(r).concat [i.date, i.patient.full_name]
			r += 1
		end
	end

	def get_items(options)
		if patient = options[:patient]
			@item.exam_sets(:patient => patient)
		elsif date = options[:date]
			@item.exam_sets(:date.gte => date)
		else
			@item.exam_sets
		end
	end
end
