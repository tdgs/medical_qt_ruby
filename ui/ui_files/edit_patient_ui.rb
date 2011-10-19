# encoding: utf-8
=begin
** Form generated from reading ui file 'edit_patient.ui'
**
** Created: Wed Oct 19 14:18:52 2011
**      by: Qt User Interface Compiler version 4.7.4
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_PatientForm
    attr_reader :actionSavePatient
    attr_reader :actionNewExamSet
    attr_reader :gridLayout
    attr_reader :label
    attr_reader :frame_2
    attr_reader :verticalLayout
    attr_reader :patient_info
    attr_reader :formLayout
    attr_reader :label_2
    attr_reader :name
    attr_reader :label_3
    attr_reader :surname
    attr_reader :label_4
    attr_reader :address
    attr_reader :label_5
    attr_reader :phone
    attr_reader :label_9
    attr_reader :birthDate
    attr_reader :label_6
    attr_reader :email
    attr_reader :label_8
    attr_reader :notes
    attr_reader :groupBox
    attr_reader :gridLayout_5
    attr_reader :examSetTable
    attr_reader :label_7

    def setupUi(patientForm)
    if patientForm.objectName.nil?
        patientForm.objectName = "patientForm"
    end
    patientForm.resize(945, 569)
    @actionSavePatient = Qt::Action.new(patientForm)
    @actionSavePatient.objectName = "actionSavePatient"
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/images/document-save.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @actionSavePatient.icon = icon
    @actionNewExamSet = Qt::Action.new(patientForm)
    @actionNewExamSet.objectName = "actionNewExamSet"
    icon1 = Qt::Icon.new
    icon1.addPixmap(Qt::Pixmap.new(":/images/appointment-new.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @actionNewExamSet.icon = icon1
    @gridLayout = Qt::GridLayout.new(patientForm)
    @gridLayout.objectName = "gridLayout"
    @label = Qt::Label.new(patientForm)
    @label.objectName = "label"

    @gridLayout.addWidget(@label, 0, 0, 1, 2)

    @frame_2 = Qt::Frame.new(patientForm)
    @frame_2.objectName = "frame_2"
    @sizePolicy = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Preferred)
    @sizePolicy.setHorizontalStretch(0)
    @sizePolicy.setVerticalStretch(0)
    @sizePolicy.heightForWidth = @frame_2.sizePolicy.hasHeightForWidth
    @frame_2.sizePolicy = @sizePolicy
    @frame_2.frameShape = Qt::Frame::StyledPanel
    @frame_2.frameShadow = Qt::Frame::Raised
    @verticalLayout = Qt::VBoxLayout.new(@frame_2)
    @verticalLayout.objectName = "verticalLayout"
    @patient_info = Qt::Frame.new(@frame_2)
    @patient_info.objectName = "patient_info"
    @sizePolicy1 = Qt::SizePolicy.new(Qt::SizePolicy::MinimumExpanding, Qt::SizePolicy::Maximum)
    @sizePolicy1.setHorizontalStretch(0)
    @sizePolicy1.setVerticalStretch(0)
    @sizePolicy1.heightForWidth = @patient_info.sizePolicy.hasHeightForWidth
    @patient_info.sizePolicy = @sizePolicy1
    @patient_info.minimumSize = Qt::Size.new(400, 200)
    @patient_info.frameShape = Qt::Frame::StyledPanel
    @patient_info.frameShadow = Qt::Frame::Raised
    @formLayout = Qt::FormLayout.new(@patient_info)
    @formLayout.objectName = "formLayout"
    @formLayout.fieldGrowthPolicy = Qt::FormLayout::ExpandingFieldsGrow
    @label_2 = Qt::Label.new(@patient_info)
    @label_2.objectName = "label_2"
    @font = Qt::Font.new
    @font.pointSize = 12
    @label_2.font = @font

    @formLayout.setWidget(0, Qt::FormLayout::LabelRole, @label_2)

    @name = Qt::LineEdit.new(@patient_info)
    @name.objectName = "name"

    @formLayout.setWidget(0, Qt::FormLayout::FieldRole, @name)

    @label_3 = Qt::Label.new(@patient_info)
    @label_3.objectName = "label_3"
    @label_3.font = @font

    @formLayout.setWidget(2, Qt::FormLayout::LabelRole, @label_3)

    @surname = Qt::LineEdit.new(@patient_info)
    @surname.objectName = "surname"

    @formLayout.setWidget(2, Qt::FormLayout::FieldRole, @surname)

    @label_4 = Qt::Label.new(@patient_info)
    @label_4.objectName = "label_4"
    @label_4.font = @font

    @formLayout.setWidget(4, Qt::FormLayout::LabelRole, @label_4)

    @address = Qt::LineEdit.new(@patient_info)
    @address.objectName = "address"

    @formLayout.setWidget(4, Qt::FormLayout::FieldRole, @address)

    @label_5 = Qt::Label.new(@patient_info)
    @label_5.objectName = "label_5"
    @label_5.font = @font

    @formLayout.setWidget(6, Qt::FormLayout::LabelRole, @label_5)

    @phone = Qt::LineEdit.new(@patient_info)
    @phone.objectName = "phone"

    @formLayout.setWidget(6, Qt::FormLayout::FieldRole, @phone)

    @label_9 = Qt::Label.new(@patient_info)
    @label_9.objectName = "label_9"
    @label_9.font = @font

    @formLayout.setWidget(8, Qt::FormLayout::LabelRole, @label_9)

    @birthDate = MyDateWidget.new(@patient_info)
    @birthDate.objectName = "birthDate"
    @birthDate.currentSection = Qt::DateTimeEdit::MonthSection
    @birthDate.calendarPopup = true

    @formLayout.setWidget(8, Qt::FormLayout::FieldRole, @birthDate)

    @label_6 = Qt::Label.new(@patient_info)
    @label_6.objectName = "label_6"
    @label_6.font = @font

    @formLayout.setWidget(9, Qt::FormLayout::LabelRole, @label_6)

    @email = Qt::LineEdit.new(@patient_info)
    @email.objectName = "email"

    @formLayout.setWidget(9, Qt::FormLayout::FieldRole, @email)


    @verticalLayout.addWidget(@patient_info)

    @label_8 = Qt::Label.new(@frame_2)
    @label_8.objectName = "label_8"
    @label_8.font = @font

    @verticalLayout.addWidget(@label_8)

    @notes = MyTextEdit.new(@frame_2)
    @notes.objectName = "notes"
    @sizePolicy2 = Qt::SizePolicy.new(Qt::SizePolicy::Expanding, Qt::SizePolicy::MinimumExpanding)
    @sizePolicy2.setHorizontalStretch(0)
    @sizePolicy2.setVerticalStretch(0)
    @sizePolicy2.heightForWidth = @notes.sizePolicy.hasHeightForWidth
    @notes.sizePolicy = @sizePolicy2
    @notes.styleSheet = "background-color: rgb(195, 195, 195);"
    @notes.acceptRichText = false

    @verticalLayout.addWidget(@notes)


    @gridLayout.addWidget(@frame_2, 2, 0, 1, 1)

    @groupBox = Qt::GroupBox.new(patientForm)
    @groupBox.objectName = "groupBox"
    @font1 = Qt::Font.new
    @font1.pointSize = 9
    @groupBox.font = @font1
    @gridLayout_5 = Qt::GridLayout.new(@groupBox)
    @gridLayout_5.objectName = "gridLayout_5"
    @examSetTable = ExamSetTable.new(@groupBox)
    @examSetTable.objectName = "examSetTable"
    @examSetTable.styleSheet = "background-color: rgb(220, 220, 220);"

    @gridLayout_5.addWidget(@examSetTable, 1, 0, 1, 1)

    @label_7 = Qt::Label.new(@groupBox)
    @label_7.objectName = "label_7"

    @gridLayout_5.addWidget(@label_7, 0, 0, 1, 1)


    @gridLayout.addWidget(@groupBox, 1, 1, 2, 1)


    retranslateUi(patientForm)
    Qt::Object.connect(@actionSavePatient, SIGNAL('triggered()'), patientForm, SLOT('save()'))
    Qt::Object.connect(@actionNewExamSet, SIGNAL('triggered()'), patientForm, SLOT('new_exam_set()'))

    Qt::MetaObject.connectSlotsByName(patientForm)
    end # setupUi

    def setup_ui(patientForm)
        setupUi(patientForm)
    end

    def retranslateUi(patientForm)
    patientForm.windowTitle = my_translate("Form", nil)
    @actionSavePatient.text = my_translate("\316\221\317\200\316\277\316\270\316\256\316\272\316\265\317\205\317\203\316\267 \316\221\317\203\316\270\316\265\316\275\316\256", nil)
    @actionNewExamSet.text = my_translate("\316\235\316\255\316\261 \316\225\317\200\316\257\317\203\316\272\316\265\317\210\316\267", nil)
    @label.text = my_translate("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n" \
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n" \
"p, li { white-space: pre-wrap; }\n" \
"</style></head><body style=\" font-family:'Ubuntu'; font-size:9pt; font-weight:400; font-style:normal;\">\n" \
"<p align=\"center\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:14pt; font-weight:600;\">\316\232\316\261\317\201\317\204\316\255\316\273\316\261 \316\221\317\203\316\270\316\265\316\275\316\277\317\215\317\202</span></p></body></html>", nil)
    @label_2.text = my_translate("\316\214\316\275\316\277\316\274\316\261:", nil)
    @label_3.text = my_translate("\316\225\317\200\317\216\316\275\317\205\316\274\316\277:", nil)
    @label_4.text = my_translate("\316\224\316\271\316\265\317\215\316\270\317\205\316\275\317\203\316\267:", nil)
    @label_5.text = my_translate("\316\244\316\267\316\273\316\255\317\206\317\211\316\275\316\277:", nil)
    @label_9.text = my_translate("\316\227\316\274\316\265\317\201. \316\223\316\255\316\275:", nil)
    @label_6.text = my_translate("e-mail:", nil)
    @label_8.text = my_translate("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n" \
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n" \
"p, li { white-space: pre-wrap; }\n" \
"</style></head><body style=\" font-family:'Ubuntu'; font-size:12pt; font-weight:400; font-style:normal;\">\n" \
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-weight:600;\">\316\243\316\267\316\274\316\265\316\271\317\216\317\203\316\265\316\271\317\202/\316\243\317\207\317\214\316\273\316\271\316\261</span></p></body></html>", nil)
    @notes.toolTip = my_translate("\316\243\316\267\316\274\316\265\316\271\317\216\317\203\316\265\316\271\317\202 \316\272\316\261\316\271 \317\203\317\207\317\214\316\273\316\271\316\261 \316\263\316\271\316\261 \316\261\317\205\317\204\317\214\316\275 \317\204\316\277\316\275 \316\221\317\203\316\270\316\265\316\275\316\256", nil)
    @notes.html = my_translate("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n" \
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n" \
"p, li { white-space: pre-wrap; }\n" \
"</style></head><body style=\" font-family:'Ubuntu'; font-size:9pt; font-weight:400; font-style:normal;\">\n" \
"<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"></p></body></html>", nil)
    @groupBox.title = ''
    @examSetTable.toolTip = my_translate("\316\233\316\257\317\203\317\204\316\261 \316\274\316\265 \317\204\316\271\317\202 \316\265\317\200\316\271\317\203\316\272\316\255\317\210\316\265\316\271\317\202 \317\204\316\277\317\205 \316\221\317\203\316\270\316\265\316\275\316\256 \317\203\317\204\316\277 \316\231\316\261\317\204\317\201\316\265\316\257\316\277", nil)
    @label_7.text = my_translate("<center><h1>\316\225\317\200\316\271\317\203\316\272\316\255\317\210\316\265\316\271\317\202</h1></center>", nil)
    end # retranslateUi

    def retranslate_ui(patientForm)
        retranslateUi(patientForm)
    end

end

module Ui
    class PatientForm < Ui_PatientForm
    end
end  # module Ui

