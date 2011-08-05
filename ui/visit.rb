require 'Qt'
require_relative './my_date_widget'
require_relative './visit_ui.rb'
require_relative './edit_exam'
require_relative 'combo'

class EditVisit < Qt::Widget
    slots "save()"
    include DataBaseModelWidget
    def initialize(parent = nil, exam_set)
        super(parent)
        @item = exam_set
        @ui = Ui::EditVisit.new
        @ui.setup_ui(self)
        @ui.editExamSet.setupUI(exam_set)
        @attributes = []
    end

    def load_from_db
        @ui.patientFullName.text = @item.patient_name
#        @ui.doctorFullName.text = @item.doctor_name
        @ui.dateEdit.text = @item.date
        @ui.editExamSet.item = @item
        @ui.editExamSet.load_from_db
        @ui.doctorCombo.load_from_db
    end

    def save_to_db
        puts 'SAVE_TO_DB VISIT'
        @item.date = @ui.dateEdit.text
        doctor = @ui.doctorCombo.get_item
        puts "DOCTOR: #{doctor.inspect}"
        @item.doctor = doctor unless doctor.nil?
        @ui.editExamSet.save_to_db
        @item.save
    end
end
