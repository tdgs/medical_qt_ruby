# encoding: utf-8
=begin
** Form generated from reading ui file 'search_patient.ui'
**
** Created: Wed Oct 19 13:31:10 2011
**      by: Qt User Interface Compiler version 4.7.4
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_Frame
    attr_reader :gridLayout_2
    attr_reader :patientTable
    attr_reader :verticalSpacer
    attr_reader :groupBox_2
    attr_reader :gridLayout
    attr_reader :label_3
    attr_reader :advancedSearch
    attr_reader :formLayout_2
    attr_reader :label_2
    attr_reader :patientName
    attr_reader :label_4
    attr_reader :patientAddress
    attr_reader :label_5
    attr_reader :patientPhone
    attr_reader :label_9
    attr_reader :widget
    attr_reader :horizontalLayout
    attr_reader :checkBox
    attr_reader :patientBirthDate
    attr_reader :label_6
    attr_reader :patientEmail
    attr_reader :patientSurname
    attr_reader :pushButton_2
    attr_reader :pushButton

    def setupUi(frame)
    if frame.objectName.nil?
        frame.objectName = "frame"
    end
    frame.resize(903, 592)
    frame.frameShape = Qt::Frame::StyledPanel
    frame.frameShadow = Qt::Frame::Raised
    @gridLayout_2 = Qt::GridLayout.new(frame)
    @gridLayout_2.objectName = "gridLayout_2"
    @patientTable = PatientTable.new(frame)
    @patientTable.objectName = "patientTable"
    @sizePolicy = Qt::SizePolicy.new(Qt::SizePolicy::MinimumExpanding, Qt::SizePolicy::Expanding)
    @sizePolicy.setHorizontalStretch(0)
    @sizePolicy.setVerticalStretch(0)
    @sizePolicy.heightForWidth = @patientTable.sizePolicy.hasHeightForWidth
    @patientTable.sizePolicy = @sizePolicy
    @patientTable.styleSheet = "background-color: rgb(220, 220, 220);"
    @patientTable.setProperty("showDropIndicator", Qt::Variant.new(false))

    @gridLayout_2.addWidget(@patientTable, 0, 1, 2, 1)

    @verticalSpacer = Qt::SpacerItem.new(20, 40, Qt::SizePolicy::Minimum, Qt::SizePolicy::Expanding)

    @gridLayout_2.addItem(@verticalSpacer, 1, 0, 1, 1)

    @groupBox_2 = Qt::GroupBox.new(frame)
    @groupBox_2.objectName = "groupBox_2"
    @sizePolicy1 = Qt::SizePolicy.new(Qt::SizePolicy::Maximum, Qt::SizePolicy::MinimumExpanding)
    @sizePolicy1.setHorizontalStretch(0)
    @sizePolicy1.setVerticalStretch(0)
    @sizePolicy1.heightForWidth = @groupBox_2.sizePolicy.hasHeightForWidth
    @groupBox_2.sizePolicy = @sizePolicy1
    @gridLayout = Qt::GridLayout.new(@groupBox_2)
    @gridLayout.objectName = "gridLayout"
    @label_3 = Qt::Label.new(@groupBox_2)
    @label_3.objectName = "label_3"
    @font = Qt::Font.new
    @font.pointSize = 10
    @label_3.font = @font

    @gridLayout.addWidget(@label_3, 0, 0, 1, 1)

    @advancedSearch = Qt::Widget.new(@groupBox_2)
    @advancedSearch.objectName = "advancedSearch"
    @advancedSearch.enabled = true
    @sizePolicy2 = Qt::SizePolicy.new(Qt::SizePolicy::MinimumExpanding, Qt::SizePolicy::Preferred)
    @sizePolicy2.setHorizontalStretch(0)
    @sizePolicy2.setVerticalStretch(0)
    @sizePolicy2.heightForWidth = @advancedSearch.sizePolicy.hasHeightForWidth
    @advancedSearch.sizePolicy = @sizePolicy2
    @advancedSearch.styleSheet = ""
    @formLayout_2 = Qt::FormLayout.new(@advancedSearch)
    @formLayout_2.objectName = "formLayout_2"
    @formLayout_2.fieldGrowthPolicy = Qt::FormLayout::ExpandingFieldsGrow
    @label_2 = Qt::Label.new(@advancedSearch)
    @label_2.objectName = "label_2"
    @label_2.font = @font

    @formLayout_2.setWidget(0, Qt::FormLayout::LabelRole, @label_2)

    @patientName = Qt::LineEdit.new(@advancedSearch)
    @patientName.objectName = "patientName"
    @sizePolicy3 = Qt::SizePolicy.new(Qt::SizePolicy::MinimumExpanding, Qt::SizePolicy::Fixed)
    @sizePolicy3.setHorizontalStretch(0)
    @sizePolicy3.setVerticalStretch(0)
    @sizePolicy3.heightForWidth = @patientName.sizePolicy.hasHeightForWidth
    @patientName.sizePolicy = @sizePolicy3

    @formLayout_2.setWidget(0, Qt::FormLayout::FieldRole, @patientName)

    @label_4 = Qt::Label.new(@advancedSearch)
    @label_4.objectName = "label_4"
    @label_4.font = @font

    @formLayout_2.setWidget(1, Qt::FormLayout::LabelRole, @label_4)

    @patientAddress = Qt::LineEdit.new(@advancedSearch)
    @patientAddress.objectName = "patientAddress"
    @sizePolicy3.heightForWidth = @patientAddress.sizePolicy.hasHeightForWidth
    @patientAddress.sizePolicy = @sizePolicy3

    @formLayout_2.setWidget(1, Qt::FormLayout::FieldRole, @patientAddress)

    @label_5 = Qt::Label.new(@advancedSearch)
    @label_5.objectName = "label_5"
    @label_5.font = @font

    @formLayout_2.setWidget(2, Qt::FormLayout::LabelRole, @label_5)

    @patientPhone = Qt::LineEdit.new(@advancedSearch)
    @patientPhone.objectName = "patientPhone"
    @sizePolicy3.heightForWidth = @patientPhone.sizePolicy.hasHeightForWidth
    @patientPhone.sizePolicy = @sizePolicy3

    @formLayout_2.setWidget(2, Qt::FormLayout::FieldRole, @patientPhone)

    @label_9 = Qt::Label.new(@advancedSearch)
    @label_9.objectName = "label_9"
    @label_9.font = @font

    @formLayout_2.setWidget(3, Qt::FormLayout::LabelRole, @label_9)

    @widget = Qt::Widget.new(@advancedSearch)
    @widget.objectName = "widget"
    @horizontalLayout = Qt::HBoxLayout.new(@widget)
    @horizontalLayout.objectName = "horizontalLayout"
    @checkBox = Qt::CheckBox.new(@widget)
    @checkBox.objectName = "checkBox"

    @horizontalLayout.addWidget(@checkBox)

    @patientBirthDate = MyDateWidget.new(@widget)
    @patientBirthDate.objectName = "patientBirthDate"
    @patientBirthDate.enabled = false
    @sizePolicy4 = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Fixed)
    @sizePolicy4.setHorizontalStretch(0)
    @sizePolicy4.setVerticalStretch(0)
    @sizePolicy4.heightForWidth = @patientBirthDate.sizePolicy.hasHeightForWidth
    @patientBirthDate.sizePolicy = @sizePolicy4
    @patientBirthDate.calendarPopup = true

    @horizontalLayout.addWidget(@patientBirthDate)


    @formLayout_2.setWidget(3, Qt::FormLayout::FieldRole, @widget)

    @label_6 = Qt::Label.new(@advancedSearch)
    @label_6.objectName = "label_6"
    @label_6.font = @font

    @formLayout_2.setWidget(4, Qt::FormLayout::LabelRole, @label_6)

    @patientEmail = Qt::LineEdit.new(@advancedSearch)
    @patientEmail.objectName = "patientEmail"
    @sizePolicy3.heightForWidth = @patientEmail.sizePolicy.hasHeightForWidth
    @patientEmail.sizePolicy = @sizePolicy3

    @formLayout_2.setWidget(4, Qt::FormLayout::FieldRole, @patientEmail)


    @gridLayout.addWidget(@advancedSearch, 2, 0, 1, 3)

    @patientSurname = Qt::LineEdit.new(@groupBox_2)
    @patientSurname.objectName = "patientSurname"
    @sizePolicy5 = Qt::SizePolicy.new(Qt::SizePolicy::Maximum, Qt::SizePolicy::Fixed)
    @sizePolicy5.setHorizontalStretch(0)
    @sizePolicy5.setVerticalStretch(0)
    @sizePolicy5.heightForWidth = @patientSurname.sizePolicy.hasHeightForWidth
    @patientSurname.sizePolicy = @sizePolicy5
    @patientSurname.minimumSize = Qt::Size.new(100, 0)

    @gridLayout.addWidget(@patientSurname, 0, 1, 1, 1)

    @pushButton_2 = Qt::PushButton.new(@groupBox_2)
    @pushButton_2.objectName = "pushButton_2"
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/images/Search.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @pushButton_2.icon = icon

    @gridLayout.addWidget(@pushButton_2, 0, 2, 1, 1)

    @pushButton = Qt::PushButton.new(@groupBox_2)
    @pushButton.objectName = "pushButton"
    @pushButton.checkable = true

    @gridLayout.addWidget(@pushButton, 1, 0, 1, 1)


    @gridLayout_2.addWidget(@groupBox_2, 0, 0, 1, 1)


    retranslateUi(frame)

    Qt::MetaObject.connectSlotsByName(frame)
    end # setupUi

    def setup_ui(frame)
        setupUi(frame)
    end

    def retranslateUi(frame)
    frame.windowTitle = my_translate("Frame", nil)
    @patientTable.toolTip = my_translate("\316\225\316\264\317\216 \317\206\316\261\316\257\316\275\316\277\316\275\317\204\316\261\316\271 \317\204\316\261 \316\261\317\200\316\277\317\204\316\265\316\273\316\255\317\203\316\274\316\261\317\204\316\261 \317\204\316\267\317\202 \316\221\316\275\316\261\316\266\316\256\317\204\316\267\317\203\316\267\317\202 \317\203\316\261\317\202.", nil)
    @groupBox_2.title = my_translate("\316\221\316\275\316\261\316\266\316\256\317\204\316\267\317\203\316\267", nil)
    @label_3.text = my_translate("\316\225\317\200\317\216\316\275\317\205\316\274\316\277:", nil)
    @label_2.text = my_translate("\316\214\316\275\316\277\316\274\316\261:", nil)
    @patientName.text = ''
    @label_4.text = my_translate("\316\224\316\271\316\265\317\215\316\270\317\205\316\275\317\203\316\267:", nil)
    @label_5.text = my_translate("\316\244\316\267\316\273\316\255\317\206\317\211\316\275\316\277:", nil)
    @label_9.text = my_translate("\316\227\316\274\316\265\317\201. \316\223\316\255\316\275:", nil)
    @checkBox.text = ''
    @label_6.text = my_translate("e-mail:", nil)
    @patientSurname.text = ''
    @pushButton_2.text = ''
    @pushButton.text = my_translate("\316\240\317\201\316\277\317\207. \316\221\316\275\316\261\316\266\316\256\317\204\316\267\317\203\316\267", nil)
    end # retranslateUi

    def retranslate_ui(frame)
        retranslateUi(frame)
    end

end

module Ui
    class Frame < Ui_Frame
    end
end  # module Ui

