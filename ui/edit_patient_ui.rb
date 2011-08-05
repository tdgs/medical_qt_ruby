=begin
** Form generated from reading ui file 'edit_patient.ui'
**
** Created: Fri Aug 5 12:02:56 2011
**      by: Qt User Interface Compiler version 4.7.2
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_PatientForm
    attr_reader :actionSavePatient
    attr_reader :actionNewExamSet
    attr_reader :verticalLayout
    attr_reader :label
    attr_reader :frame
    attr_reader :gridLayout
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
    attr_reader :frame_2
    attr_reader :formLayout_2
    attr_reader :notes
    attr_reader :label_8
    attr_reader :saveButton
    attr_reader :verticalSpacer
    attr_reader :groupBox
    attr_reader :gridLayout_2
    attr_reader :horizontalSpacer
    attr_reader :newExamSet
    attr_reader :examSetTable

    def setupUi(patientForm)
    if patientForm.objectName.nil?
        patientForm.objectName = "patientForm"
    end
    patientForm.resize(914, 826)
    @actionSavePatient = Qt::Action.new(patientForm)
    @actionSavePatient.objectName = "actionSavePatient"
    @actionNewExamSet = Qt::Action.new(patientForm)
    @actionNewExamSet.objectName = "actionNewExamSet"
    @verticalLayout = Qt::VBoxLayout.new(patientForm)
    @verticalLayout.objectName = "verticalLayout"
    @label = Qt::Label.new(patientForm)
    @label.objectName = "label"

    @verticalLayout.addWidget(@label)

    @frame = Qt::Frame.new(patientForm)
    @frame.objectName = "frame"
    @frame.frameShape = Qt::Frame::Box
    @frame.frameShadow = Qt::Frame::Raised
    @gridLayout = Qt::GridLayout.new(@frame)
    @gridLayout.objectName = "gridLayout"
    @patient_info = Qt::Frame.new(@frame)
    @patient_info.objectName = "patient_info"
    @sizePolicy = Qt::SizePolicy.new(Qt::SizePolicy::Maximum, Qt::SizePolicy::Preferred)
    @sizePolicy.setHorizontalStretch(0)
    @sizePolicy.setVerticalStretch(0)
    @sizePolicy.heightForWidth = @patient_info.sizePolicy.hasHeightForWidth
    @patient_info.sizePolicy = @sizePolicy
    @patient_info.minimumSize = Qt::Size.new(400, 200)
    @patient_info.frameShape = Qt::Frame::StyledPanel
    @patient_info.frameShadow = Qt::Frame::Raised
    @formLayout = Qt::FormLayout.new(@patient_info)
    @formLayout.objectName = "formLayout"
    @formLayout.fieldGrowthPolicy = Qt::FormLayout::ExpandingFieldsGrow
    @label_2 = Qt::Label.new(@patient_info)
    @label_2.objectName = "label_2"

    @formLayout.setWidget(0, Qt::FormLayout::LabelRole, @label_2)

    @name = Qt::LineEdit.new(@patient_info)
    @name.objectName = "name"

    @formLayout.setWidget(0, Qt::FormLayout::FieldRole, @name)

    @label_3 = Qt::Label.new(@patient_info)
    @label_3.objectName = "label_3"

    @formLayout.setWidget(2, Qt::FormLayout::LabelRole, @label_3)

    @surname = Qt::LineEdit.new(@patient_info)
    @surname.objectName = "surname"

    @formLayout.setWidget(2, Qt::FormLayout::FieldRole, @surname)

    @label_4 = Qt::Label.new(@patient_info)
    @label_4.objectName = "label_4"

    @formLayout.setWidget(4, Qt::FormLayout::LabelRole, @label_4)

    @address = Qt::LineEdit.new(@patient_info)
    @address.objectName = "address"

    @formLayout.setWidget(4, Qt::FormLayout::FieldRole, @address)

    @label_5 = Qt::Label.new(@patient_info)
    @label_5.objectName = "label_5"

    @formLayout.setWidget(6, Qt::FormLayout::LabelRole, @label_5)

    @phone = Qt::LineEdit.new(@patient_info)
    @phone.objectName = "phone"

    @formLayout.setWidget(6, Qt::FormLayout::FieldRole, @phone)

    @label_9 = Qt::Label.new(@patient_info)
    @label_9.objectName = "label_9"

    @formLayout.setWidget(8, Qt::FormLayout::LabelRole, @label_9)

    @birthDate = MyDateWidget.new(@patient_info)
    @birthDate.objectName = "birthDate"
    @birthDate.currentSection = Qt::DateTimeEdit::MonthSection
    @birthDate.calendarPopup = true

    @formLayout.setWidget(8, Qt::FormLayout::FieldRole, @birthDate)

    @label_6 = Qt::Label.new(@patient_info)
    @label_6.objectName = "label_6"

    @formLayout.setWidget(9, Qt::FormLayout::LabelRole, @label_6)

    @email = Qt::LineEdit.new(@patient_info)
    @email.objectName = "email"

    @formLayout.setWidget(9, Qt::FormLayout::FieldRole, @email)


    @gridLayout.addWidget(@patient_info, 1, 0, 2, 1)

    @frame_2 = Qt::Frame.new(@frame)
    @frame_2.objectName = "frame_2"
    @sizePolicy1 = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Preferred)
    @sizePolicy1.setHorizontalStretch(0)
    @sizePolicy1.setVerticalStretch(0)
    @sizePolicy1.heightForWidth = @frame_2.sizePolicy.hasHeightForWidth
    @frame_2.sizePolicy = @sizePolicy1
    @frame_2.frameShape = Qt::Frame::StyledPanel
    @frame_2.frameShadow = Qt::Frame::Raised
    @formLayout_2 = Qt::FormLayout.new(@frame_2)
    @formLayout_2.objectName = "formLayout_2"
    @formLayout_2.fieldGrowthPolicy = Qt::FormLayout::ExpandingFieldsGrow
    @notes = MyTextEdit.new(@frame_2)
    @notes.objectName = "notes"
    @sizePolicy2 = Qt::SizePolicy.new(Qt::SizePolicy::Expanding, Qt::SizePolicy::Maximum)
    @sizePolicy2.setHorizontalStretch(0)
    @sizePolicy2.setVerticalStretch(0)
    @sizePolicy2.heightForWidth = @notes.sizePolicy.hasHeightForWidth
    @notes.sizePolicy = @sizePolicy2
    @notes.autoFormatting = Qt::TextEdit::AutoAll
    @notes.undoRedoEnabled = true
    @notes.textInteractionFlags = Qt::LinksAccessibleByKeyboard|Qt::LinksAccessibleByMouse|Qt::TextBrowserInteraction|Qt::TextEditable|Qt::TextEditorInteraction|Qt::TextSelectableByKeyboard|Qt::TextSelectableByMouse

    @formLayout_2.setWidget(2, Qt::FormLayout::FieldRole, @notes)

    @label_8 = Qt::Label.new(@frame_2)
    @label_8.objectName = "label_8"

    @formLayout_2.setWidget(1, Qt::FormLayout::FieldRole, @label_8)


    @gridLayout.addWidget(@frame_2, 1, 1, 2, 1)

    @saveButton = Qt::PushButton.new(@frame)
    @saveButton.objectName = "saveButton"

    @gridLayout.addWidget(@saveButton, 3, 0, 1, 1)


    @verticalLayout.addWidget(@frame)

    @verticalSpacer = Qt::SpacerItem.new(20, 10, Qt::SizePolicy::Minimum, Qt::SizePolicy::Minimum)

    @verticalLayout.addItem(@verticalSpacer)

    @groupBox = Qt::GroupBox.new(patientForm)
    @groupBox.objectName = "groupBox"
    @gridLayout_2 = Qt::GridLayout.new(@groupBox)
    @gridLayout_2.objectName = "gridLayout_2"
    @horizontalSpacer = Qt::SpacerItem.new(875, 21, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)

    @gridLayout_2.addItem(@horizontalSpacer, 1, 0, 1, 1)

    @newExamSet = Qt::PushButton.new(@groupBox)
    @newExamSet.objectName = "newExamSet"

    @gridLayout_2.addWidget(@newExamSet, 1, 1, 1, 1)

    @examSetTable = ExamSetTable.new(@groupBox)
    @examSetTable.objectName = "examSetTable"

    @gridLayout_2.addWidget(@examSetTable, 0, 0, 1, 2)


    @verticalLayout.addWidget(@groupBox)


    retranslateUi(patientForm)
    Qt::Object.connect(@saveButton, SIGNAL('clicked()'), patientForm, SLOT('save()'))
    Qt::Object.connect(@newExamSet, SIGNAL('clicked()'), patientForm, SLOT('new_exam_set()'))

    Qt::MetaObject.connectSlotsByName(patientForm)
    end # setupUi

    def setup_ui(patientForm)
        setupUi(patientForm)
    end

    def retranslateUi(patientForm)
    patientForm.windowTitle = Qt::Application.translate("PatientForm", "Form", nil, Qt::Application::UnicodeUTF8)
    @actionSavePatient.text = Qt::Application.translate("PatientForm", "\316\221\317\200\316\277\316\270\316\256\316\272\316\265\317\205\317\203\316\267 \316\221\317\203\316\270\316\265\316\275\316\256", nil, Qt::Application::UnicodeUTF8)
    @actionNewExamSet.text = Qt::Application.translate("PatientForm", "\316\235\316\255\316\261 \316\225\317\200\316\257\317\203\316\272\316\265\317\210\316\267", nil, Qt::Application::UnicodeUTF8)
    @label.text = Qt::Application.translate("PatientForm", "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n" \
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n" \
"p, li { white-space: pre-wrap; }\n" \
"</style></head><body style=\" font-family:'Ubuntu'; font-size:9pt; font-weight:400; font-style:normal;\">\n" \
"<p align=\"center\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:14pt; font-weight:600;\">\316\243\317\204\316\277\316\271\317\207\316\265\316\257\316\261 \316\221\317\203\316\270\316\265\316\275\316\256</span></p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @label_2.text = Qt::Application.translate("PatientForm", "\316\214\316\275\316\277\316\274\316\261:", nil, Qt::Application::UnicodeUTF8)
    @label_3.text = Qt::Application.translate("PatientForm", "\316\225\317\200\317\216\316\275\317\205\316\274\316\277:", nil, Qt::Application::UnicodeUTF8)
    @label_4.text = Qt::Application.translate("PatientForm", "\316\224\316\271\316\265\317\215\316\270\317\205\316\275\317\203\316\267:", nil, Qt::Application::UnicodeUTF8)
    @label_5.text = Qt::Application.translate("PatientForm", "\316\244\316\267\316\273\316\255\317\206\317\211\316\275\316\277:", nil, Qt::Application::UnicodeUTF8)
    @label_9.text = Qt::Application.translate("PatientForm", "\316\227\316\274\316\265\317\201. \316\223\316\255\316\275:", nil, Qt::Application::UnicodeUTF8)
    @label_6.text = Qt::Application.translate("PatientForm", "e-mail:", nil, Qt::Application::UnicodeUTF8)
    @label_8.text = Qt::Application.translate("PatientForm", "\316\243\316\267\316\274\316\265\316\271\317\216\317\203\316\265\316\271\317\202/\316\243\317\207\317\214\316\273\316\271\316\261", nil, Qt::Application::UnicodeUTF8)
    @saveButton.text = Qt::Application.translate("PatientForm", "\316\221\317\200\316\277\316\270\316\256\316\272\316\265\317\205\317\203\316\267", nil, Qt::Application::UnicodeUTF8)
    @groupBox.title = Qt::Application.translate("PatientForm", "\316\225\317\200\316\271\317\203\316\272\316\255\317\210\316\265\316\271\317\202", nil, Qt::Application::UnicodeUTF8)
    @newExamSet.text = Qt::Application.translate("PatientForm", "\316\224\316\267\316\274\316\271\316\277\317\205\317\201\316\263\316\271\316\261", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(patientForm)
        retranslateUi(patientForm)
    end

end

module Ui
    class PatientForm < Ui_PatientForm
    end
end  # module Ui

