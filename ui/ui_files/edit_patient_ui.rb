=begin
** Form generated from reading ui file 'edit_patient.ui'
**
** Created: Sat Oct 8 14:27:03 2011
**      by: Qt User Interface Compiler version 4.7.2
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_PatientForm
    attr_reader :actionSavePatient
    attr_reader :actionNewExamSet
    attr_reader :gridLayout_4
    attr_reader :groupBox
    attr_reader :gridLayout_5
    attr_reader :examSetTable
    attr_reader :newExamSet
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
    attr_reader :verticalSpacer
    attr_reader :label_8
    attr_reader :notes
    attr_reader :saveButton
    attr_reader :horizontalSpacer_3

    def setupUi(patientForm)
    if patientForm.objectName.nil?
        patientForm.objectName = "patientForm"
    end
    patientForm.resize(1096, 826)
    @actionSavePatient = Qt::Action.new(patientForm)
    @actionSavePatient.objectName = "actionSavePatient"
    @actionNewExamSet = Qt::Action.new(patientForm)
    @actionNewExamSet.objectName = "actionNewExamSet"
    @gridLayout_4 = Qt::GridLayout.new(patientForm)
    @gridLayout_4.objectName = "gridLayout_4"
    @groupBox = Qt::GroupBox.new(patientForm)
    @groupBox.objectName = "groupBox"
    @gridLayout_5 = Qt::GridLayout.new(@groupBox)
    @gridLayout_5.objectName = "gridLayout_5"
    @examSetTable = ExamSetTable.new(@groupBox)
    @examSetTable.objectName = "examSetTable"

    @gridLayout_5.addWidget(@examSetTable, 0, 0, 1, 1)

    @newExamSet = Qt::PushButton.new(@groupBox)
    @newExamSet.objectName = "newExamSet"

    @gridLayout_5.addWidget(@newExamSet, 1, 0, 1, 1)


    @gridLayout_4.addWidget(@groupBox, 0, 2, 2, 1)

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


    @verticalLayout.addWidget(@patient_info)

    @verticalSpacer = Qt::SpacerItem.new(20, 40, Qt::SizePolicy::Minimum, Qt::SizePolicy::Fixed)

    @verticalLayout.addItem(@verticalSpacer)

    @label_8 = Qt::Label.new(@frame_2)
    @label_8.objectName = "label_8"

    @verticalLayout.addWidget(@label_8)

    @notes = MyTextEdit.new(@frame_2)
    @notes.objectName = "notes"
    @sizePolicy2 = Qt::SizePolicy.new(Qt::SizePolicy::Expanding, Qt::SizePolicy::MinimumExpanding)
    @sizePolicy2.setHorizontalStretch(0)
    @sizePolicy2.setVerticalStretch(0)
    @sizePolicy2.heightForWidth = @notes.sizePolicy.hasHeightForWidth
    @notes.sizePolicy = @sizePolicy2

    @verticalLayout.addWidget(@notes)


    @gridLayout_4.addWidget(@frame_2, 1, 0, 1, 1)

    @saveButton = Qt::PushButton.new(patientForm)
    @saveButton.objectName = "saveButton"

    @gridLayout_4.addWidget(@saveButton, 2, 0, 1, 1)

    @horizontalSpacer_3 = Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Minimum, Qt::SizePolicy::Minimum)

    @gridLayout_4.addItem(@horizontalSpacer_3, 1, 1, 1, 1)


    retranslateUi(patientForm)
    Qt::Object.connect(@newExamSet, SIGNAL('clicked()'), patientForm, SLOT('new_exam_set()'))
    Qt::Object.connect(@saveButton, SIGNAL('clicked()'), patientForm, SLOT('save()'))

    Qt::MetaObject.connectSlotsByName(patientForm)
    end # setupUi

    def setup_ui(patientForm)
        setupUi(patientForm)
    end

    def retranslateUi(patientForm)
    patientForm.windowTitle = Qt::Application.translate("PatientForm", "Form", nil, Qt::Application::UnicodeUTF8)
    @actionSavePatient.text = Qt::Application.translate("PatientForm", "\316\221\317\200\316\277\316\270\316\256\316\272\316\265\317\205\317\203\316\267 \316\221\317\203\316\270\316\265\316\275\316\256", nil, Qt::Application::UnicodeUTF8)
    @actionNewExamSet.text = Qt::Application.translate("PatientForm", "\316\235\316\255\316\261 \316\225\317\200\316\257\317\203\316\272\316\265\317\210\316\267", nil, Qt::Application::UnicodeUTF8)
    @groupBox.title = Qt::Application.translate("PatientForm", "\316\225\317\200\316\271\317\203\316\272\316\255\317\210\316\265\316\271\317\202", nil, Qt::Application::UnicodeUTF8)
    @newExamSet.text = Qt::Application.translate("PatientForm", "\316\224\316\267\316\274\316\271\316\277\317\205\317\201\316\263\316\271\316\261", nil, Qt::Application::UnicodeUTF8)
    @label_2.text = Qt::Application.translate("PatientForm", "\316\214\316\275\316\277\316\274\316\261:", nil, Qt::Application::UnicodeUTF8)
    @label_3.text = Qt::Application.translate("PatientForm", "\316\225\317\200\317\216\316\275\317\205\316\274\316\277:", nil, Qt::Application::UnicodeUTF8)
    @label_4.text = Qt::Application.translate("PatientForm", "\316\224\316\271\316\265\317\215\316\270\317\205\316\275\317\203\316\267:", nil, Qt::Application::UnicodeUTF8)
    @label_5.text = Qt::Application.translate("PatientForm", "\316\244\316\267\316\273\316\255\317\206\317\211\316\275\316\277:", nil, Qt::Application::UnicodeUTF8)
    @label_9.text = Qt::Application.translate("PatientForm", "\316\227\316\274\316\265\317\201. \316\223\316\255\316\275:", nil, Qt::Application::UnicodeUTF8)
    @label_6.text = Qt::Application.translate("PatientForm", "e-mail:", nil, Qt::Application::UnicodeUTF8)
    @label_8.text = Qt::Application.translate("PatientForm", "\316\243\316\267\316\274\316\265\316\271\317\216\317\203\316\265\316\271\317\202/\316\243\317\207\317\214\316\273\316\271\316\261", nil, Qt::Application::UnicodeUTF8)
    @saveButton.text = Qt::Application.translate("PatientForm", "\316\221\317\200\316\277\316\270\316\256\316\272\316\265\317\205\317\203\316\267", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(patientForm)
        retranslateUi(patientForm)
    end

end

module Ui
    class PatientForm < Ui_PatientForm
    end
end  # module Ui

