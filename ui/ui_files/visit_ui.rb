=begin
** Form generated from reading ui file 'visit.ui'
**
** Created: Sun Oct 9 20:22:24 2011
**      by: Qt User Interface Compiler version 4.7.2
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_EditVisit
    attr_reader :gridLayout_2
    attr_reader :label_4
    attr_reader :groupBox_2
    attr_reader :gridLayout
    attr_reader :pushButton_3
    attr_reader :pushButton_2
    attr_reader :pushButton
    attr_reader :horizontalSpacer
    attr_reader :groupBox
    attr_reader :formLayout
    attr_reader :label
    attr_reader :patientFullName
    attr_reader :label_2
    attr_reader :label_3
    attr_reader :dateEdit
    attr_reader :doctorCombo
    attr_reader :editExamSet

    def setupUi(editVisit)
    if editVisit.objectName.nil?
        editVisit.objectName = "editVisit"
    end
    editVisit.resize(991, 674)
    @gridLayout_2 = Qt::GridLayout.new(editVisit)
    @gridLayout_2.objectName = "gridLayout_2"
    @label_4 = Qt::Label.new(editVisit)
    @label_4.objectName = "label_4"
    @sizePolicy = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Fixed)
    @sizePolicy.setHorizontalStretch(0)
    @sizePolicy.setVerticalStretch(0)
    @sizePolicy.heightForWidth = @label_4.sizePolicy.hasHeightForWidth
    @label_4.sizePolicy = @sizePolicy
    @font = Qt::Font.new
    @font.pointSize = 14
    @label_4.font = @font

    @gridLayout_2.addWidget(@label_4, 0, 1, 1, 1)

    @groupBox_2 = Qt::GroupBox.new(editVisit)
    @groupBox_2.objectName = "groupBox_2"
    @sizePolicy1 = Qt::SizePolicy.new(Qt::SizePolicy::Minimum, Qt::SizePolicy::Maximum)
    @sizePolicy1.setHorizontalStretch(0)
    @sizePolicy1.setVerticalStretch(0)
    @sizePolicy1.heightForWidth = @groupBox_2.sizePolicy.hasHeightForWidth
    @groupBox_2.sizePolicy = @sizePolicy1
    @font1 = Qt::Font.new
    @font1.pointSize = 10
    @groupBox_2.font = @font1
    @groupBox_2.flat = false
    @gridLayout = Qt::GridLayout.new(@groupBox_2)
    @gridLayout.objectName = "gridLayout"
    @pushButton_3 = Qt::PushButton.new(@groupBox_2)
    @pushButton_3.objectName = "pushButton_3"
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/images/PatientMale.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @pushButton_3.icon = icon

    @gridLayout.addWidget(@pushButton_3, 0, 0, 1, 1)

    @pushButton_2 = Qt::PushButton.new(@groupBox_2)
    @pushButton_2.objectName = "pushButton_2"
    icon1 = Qt::Icon.new
    icon1.addPixmap(Qt::Pixmap.new(":/images/PrinterSettings.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @pushButton_2.icon = icon1

    @gridLayout.addWidget(@pushButton_2, 0, 1, 1, 1)

    @pushButton = Qt::PushButton.new(@groupBox_2)
    @pushButton.objectName = "pushButton"
    icon2 = Qt::Icon.new
    icon2.addPixmap(Qt::Pixmap.new(":/images/Save.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @pushButton.icon = icon2
    @pushButton.default = true
    @pushButton.flat = false

    @gridLayout.addWidget(@pushButton, 0, 2, 1, 1)


    @gridLayout_2.addWidget(@groupBox_2, 1, 0, 1, 1)

    @horizontalSpacer = Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)

    @gridLayout_2.addItem(@horizontalSpacer, 1, 1, 1, 1)

    @groupBox = Qt::GroupBox.new(editVisit)
    @groupBox.objectName = "groupBox"
    @sizePolicy2 = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Maximum)
    @sizePolicy2.setHorizontalStretch(0)
    @sizePolicy2.setVerticalStretch(0)
    @sizePolicy2.heightForWidth = @groupBox.sizePolicy.hasHeightForWidth
    @groupBox.sizePolicy = @sizePolicy2
    @font2 = Qt::Font.new
    @font2.pointSize = 10
    @font2.bold = false
    @font2.weight = 50
    @groupBox.font = @font2
    @groupBox.flat = true
    @groupBox.checkable = false
    @formLayout = Qt::FormLayout.new(@groupBox)
    @formLayout.objectName = "formLayout"
    @formLayout.fieldGrowthPolicy = Qt::FormLayout::ExpandingFieldsGrow
    @label = Qt::Label.new(@groupBox)
    @label.objectName = "label"

    @formLayout.setWidget(0, Qt::FormLayout::LabelRole, @label)

    @patientFullName = Qt::LineEdit.new(@groupBox)
    @patientFullName.objectName = "patientFullName"
    @patientFullName.readOnly = true

    @formLayout.setWidget(0, Qt::FormLayout::FieldRole, @patientFullName)

    @label_2 = Qt::Label.new(@groupBox)
    @label_2.objectName = "label_2"

    @formLayout.setWidget(1, Qt::FormLayout::LabelRole, @label_2)

    @label_3 = Qt::Label.new(@groupBox)
    @label_3.objectName = "label_3"

    @formLayout.setWidget(2, Qt::FormLayout::LabelRole, @label_3)

    @dateEdit = MyDateWidget.new(@groupBox)
    @dateEdit.objectName = "dateEdit"
    @dateEdit.calendarPopup = true

    @formLayout.setWidget(2, Qt::FormLayout::FieldRole, @dateEdit)

    @doctorCombo = DoctorCombo.new(@groupBox)
    @doctorCombo.objectName = "doctorCombo"
    @doctorCombo.editable = true
    @doctorCombo.insertPolicy = Qt::ComboBox::NoInsert

    @formLayout.setWidget(1, Qt::FormLayout::FieldRole, @doctorCombo)


    @gridLayout_2.addWidget(@groupBox, 2, 0, 1, 1)

    @editExamSet = EditExamSet.new(editVisit)
    @editExamSet.objectName = "editExamSet"
    @editExamSet.font = @font1

    @gridLayout_2.addWidget(@editExamSet, 3, 0, 1, 3)


    retranslateUi(editVisit)
    Qt::Object.connect(@pushButton, SIGNAL('clicked()'), editVisit, SLOT('save()'))
    Qt::Object.connect(@pushButton_2, SIGNAL('clicked()'), editVisit, SLOT('print()'))
    Qt::Object.connect(@pushButton_3, SIGNAL('clicked()'), editVisit, SLOT('patient_info()'))

    Qt::MetaObject.connectSlotsByName(editVisit)
    end # setupUi

    def setup_ui(editVisit)
        setupUi(editVisit)
    end

    def retranslateUi(editVisit)
    editVisit.windowTitle = Qt::Application.translate("EditVisit", "Form", nil, Qt::Application::UnicodeUTF8)
    @label_4.text = Qt::Application.translate("EditVisit", "\316\232\316\261\317\201\317\204\316\255\316\273\316\261 \316\225\317\200\316\257\317\203\316\272\316\265\317\210\316\267\317\202", nil, Qt::Application::UnicodeUTF8)
    @groupBox_2.title = ''
    @pushButton_3.text = Qt::Application.translate("EditVisit", "\316\232\316\261\317\201\317\204\316\255\316\273\316\261 \316\221\317\203\316\270\316\265\316\275\316\256...", nil, Qt::Application::UnicodeUTF8)
    @pushButton_2.text = Qt::Application.translate("EditVisit", "\316\225\316\272\317\204\317\215\317\200\317\211\317\203\316\267", nil, Qt::Application::UnicodeUTF8)
    @pushButton.text = Qt::Application.translate("EditVisit", "\316\221\317\200\316\277\316\270\316\256\316\272\316\265\317\205\317\203\316\267", nil, Qt::Application::UnicodeUTF8)
    @groupBox.title = Qt::Application.translate("EditVisit", "\316\243\317\204\316\277\316\271\317\207\316\265\316\257\316\261 \316\225\317\200\316\257\317\203\316\272\316\265\317\210\316\267\317\202", nil, Qt::Application::UnicodeUTF8)
    @label.text = Qt::Application.translate("EditVisit", "\316\221\317\203\316\270\316\265\316\275\316\256\317\202:", nil, Qt::Application::UnicodeUTF8)
    @label_2.text = Qt::Application.translate("EditVisit", "\316\240\316\261\317\201\316\261\317\200\316\255\316\274\317\200\317\211\316\275 \316\231\316\261\317\204\317\201\317\214\317\202:", nil, Qt::Application::UnicodeUTF8)
    @label_3.text = Qt::Application.translate("EditVisit", "\316\227\316\274\316\265\317\201\316\277\316\274\316\267\316\275\316\257\316\261 \316\225\317\200\316\257\317\203\316\272\316\265\317\210\316\267\317\202:", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(editVisit)
        retranslateUi(editVisit)
    end

end

module Ui
    class EditVisit < Ui_EditVisit
    end
end  # module Ui

