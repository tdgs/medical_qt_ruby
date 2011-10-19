# encoding: utf-8
=begin
** Form generated from reading ui file 'person_main.ui'
**
** Created: Wed Oct 19 13:31:12 2011
**      by: Qt User Interface Compiler version 4.7.4
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_PersonFrame
    attr_reader :gridLayout_2
    attr_reader :resultsTable
    attr_reader :titleLabel
    attr_reader :groupBox_2
    attr_reader :gridLayout
    attr_reader :searchBox
    attr_reader :formLayout_2
    attr_reader :label_3
    attr_reader :surname
    attr_reader :label_2
    attr_reader :name
    attr_reader :label_4
    attr_reader :address
    attr_reader :label_5
    attr_reader :phone
    attr_reader :verticalSpacer
    attr_reader :pushButton_2
    attr_reader :pushButton

    def setupUi(personFrame)
    if personFrame.objectName.nil?
        personFrame.objectName = "personFrame"
    end
    personFrame.resize(903, 592)
    personFrame.frameShape = Qt::Frame::StyledPanel
    personFrame.frameShadow = Qt::Frame::Raised
    @gridLayout_2 = Qt::GridLayout.new(personFrame)
    @gridLayout_2.objectName = "gridLayout_2"
    @resultsTable = PatientTable.new(personFrame)
    @resultsTable.objectName = "resultsTable"
    @sizePolicy = Qt::SizePolicy.new(Qt::SizePolicy::MinimumExpanding, Qt::SizePolicy::Expanding)
    @sizePolicy.setHorizontalStretch(0)
    @sizePolicy.setVerticalStretch(0)
    @sizePolicy.heightForWidth = @resultsTable.sizePolicy.hasHeightForWidth
    @resultsTable.sizePolicy = @sizePolicy
    @resultsTable.styleSheet = "background-color: rgb(220, 220, 220);"
    @resultsTable.setProperty("showDropIndicator", Qt::Variant.new(false))

    @gridLayout_2.addWidget(@resultsTable, 1, 1, 2, 1)

    @titleLabel = Qt::Label.new(personFrame)
    @titleLabel.objectName = "titleLabel"

    @gridLayout_2.addWidget(@titleLabel, 0, 0, 1, 2)

    @groupBox_2 = Qt::GroupBox.new(personFrame)
    @groupBox_2.objectName = "groupBox_2"
    @sizePolicy1 = Qt::SizePolicy.new(Qt::SizePolicy::Maximum, Qt::SizePolicy::MinimumExpanding)
    @sizePolicy1.setHorizontalStretch(0)
    @sizePolicy1.setVerticalStretch(0)
    @sizePolicy1.heightForWidth = @groupBox_2.sizePolicy.hasHeightForWidth
    @groupBox_2.sizePolicy = @sizePolicy1
    @gridLayout = Qt::GridLayout.new(@groupBox_2)
    @gridLayout.objectName = "gridLayout"
    @searchBox = Qt::Widget.new(@groupBox_2)
    @searchBox.objectName = "searchBox"
    @searchBox.enabled = true
    @sizePolicy2 = Qt::SizePolicy.new(Qt::SizePolicy::MinimumExpanding, Qt::SizePolicy::Preferred)
    @sizePolicy2.setHorizontalStretch(0)
    @sizePolicy2.setVerticalStretch(0)
    @sizePolicy2.heightForWidth = @searchBox.sizePolicy.hasHeightForWidth
    @searchBox.sizePolicy = @sizePolicy2
    @searchBox.styleSheet = ""
    @formLayout_2 = Qt::FormLayout.new(@searchBox)
    @formLayout_2.objectName = "formLayout_2"
    @formLayout_2.fieldGrowthPolicy = Qt::FormLayout::ExpandingFieldsGrow
    @label_3 = Qt::Label.new(@searchBox)
    @label_3.objectName = "label_3"
    @font = Qt::Font.new
    @font.pointSize = 10
    @label_3.font = @font

    @formLayout_2.setWidget(0, Qt::FormLayout::LabelRole, @label_3)

    @surname = Qt::LineEdit.new(@searchBox)
    @surname.objectName = "surname"
    @sizePolicy3 = Qt::SizePolicy.new(Qt::SizePolicy::MinimumExpanding, Qt::SizePolicy::Fixed)
    @sizePolicy3.setHorizontalStretch(0)
    @sizePolicy3.setVerticalStretch(0)
    @sizePolicy3.heightForWidth = @surname.sizePolicy.hasHeightForWidth
    @surname.sizePolicy = @sizePolicy3
    @surname.minimumSize = Qt::Size.new(100, 0)

    @formLayout_2.setWidget(0, Qt::FormLayout::FieldRole, @surname)

    @label_2 = Qt::Label.new(@searchBox)
    @label_2.objectName = "label_2"
    @label_2.font = @font

    @formLayout_2.setWidget(1, Qt::FormLayout::LabelRole, @label_2)

    @name = Qt::LineEdit.new(@searchBox)
    @name.objectName = "name"
    @sizePolicy3.heightForWidth = @name.sizePolicy.hasHeightForWidth
    @name.sizePolicy = @sizePolicy3

    @formLayout_2.setWidget(1, Qt::FormLayout::FieldRole, @name)

    @label_4 = Qt::Label.new(@searchBox)
    @label_4.objectName = "label_4"
    @label_4.font = @font

    @formLayout_2.setWidget(2, Qt::FormLayout::LabelRole, @label_4)

    @address = Qt::LineEdit.new(@searchBox)
    @address.objectName = "address"
    @sizePolicy3.heightForWidth = @address.sizePolicy.hasHeightForWidth
    @address.sizePolicy = @sizePolicy3

    @formLayout_2.setWidget(2, Qt::FormLayout::FieldRole, @address)

    @label_5 = Qt::Label.new(@searchBox)
    @label_5.objectName = "label_5"
    @label_5.font = @font

    @formLayout_2.setWidget(3, Qt::FormLayout::LabelRole, @label_5)

    @phone = Qt::LineEdit.new(@searchBox)
    @phone.objectName = "phone"
    @sizePolicy3.heightForWidth = @phone.sizePolicy.hasHeightForWidth
    @phone.sizePolicy = @sizePolicy3

    @formLayout_2.setWidget(3, Qt::FormLayout::FieldRole, @phone)

    @verticalSpacer = Qt::SpacerItem.new(20, 40, Qt::SizePolicy::Minimum, Qt::SizePolicy::Expanding)

    @formLayout_2.setItem(4, Qt::FormLayout::FieldRole, @verticalSpacer)

    @pushButton_2 = Qt::PushButton.new(@searchBox)
    @pushButton_2.objectName = "pushButton_2"
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/images/Search.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @pushButton_2.icon = icon

    @formLayout_2.setWidget(5, Qt::FormLayout::LabelRole, @pushButton_2)

    @pushButton = Qt::PushButton.new(@searchBox)
    @pushButton.objectName = "pushButton"

    @formLayout_2.setWidget(5, Qt::FormLayout::FieldRole, @pushButton)


    @gridLayout.addWidget(@searchBox, 1, 0, 1, 3)


    @gridLayout_2.addWidget(@groupBox_2, 1, 0, 1, 1)

    Qt::Widget.setTabOrder(@surname, @name)
    Qt::Widget.setTabOrder(@name, @address)
    Qt::Widget.setTabOrder(@address, @phone)
    Qt::Widget.setTabOrder(@phone, @pushButton_2)
    Qt::Widget.setTabOrder(@pushButton_2, @pushButton)
    Qt::Widget.setTabOrder(@pushButton, @resultsTable)

    retranslateUi(personFrame)
    Qt::Object.connect(@pushButton_2, SIGNAL('clicked()'), personFrame, SLOT('search()'))
    Qt::Object.connect(@surname, SIGNAL('returnPressed()'), @pushButton_2, SLOT('click()'))
    Qt::Object.connect(@name, SIGNAL('returnPressed()'), @pushButton_2, SLOT('click()'))
    Qt::Object.connect(@address, SIGNAL('returnPressed()'), @pushButton_2, SLOT('click()'))
    Qt::Object.connect(@phone, SIGNAL('returnPressed()'), @pushButton_2, SLOT('click()'))
    Qt::Object.connect(@pushButton, SIGNAL('clicked()'), @surname, SLOT('clear()'))
    Qt::Object.connect(@pushButton, SIGNAL('clicked()'), @name, SLOT('clear()'))
    Qt::Object.connect(@pushButton, SIGNAL('clicked()'), @address, SLOT('clear()'))
    Qt::Object.connect(@pushButton, SIGNAL('clicked()'), @phone, SLOT('clear()'))
    Qt::Object.connect(@pushButton, SIGNAL('clicked()'), personFrame, SLOT('show_all()'))

    Qt::MetaObject.connectSlotsByName(personFrame)
    end # setupUi

    def setup_ui(personFrame)
        setupUi(personFrame)
    end

    def retranslateUi(personFrame)
    personFrame.windowTitle = my_translate("Frame", nil)
    @resultsTable.toolTip = my_translate("\316\225\316\264\317\216 \317\206\316\261\316\257\316\275\316\277\316\275\317\204\316\261\316\271 \317\204\316\261 \316\261\317\200\316\277\317\204\316\265\316\273\316\255\317\203\316\274\316\261\317\204\316\261 \317\204\316\267\317\202 \316\221\316\275\316\261\316\266\316\256\317\204\316\267\317\203\316\267\317\202 \317\203\316\261\317\202.", nil)
    @titleLabel.text = my_translate("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n" \
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n" \
"p, li { white-space: pre-wrap; }\n" \
"</style></head><body style=\" font-family:'Ubuntu'; font-size:9pt; font-weight:400; font-style:normal;\">\n" \
"<p align=\"center\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:16pt;\">\316\221\317\203\316\270\316\265\316\275\316\265\316\257\317\202</span></p></body></html>", nil)
    @groupBox_2.title = my_translate("\316\221\316\275\316\261\316\266\316\256\317\204\316\267\317\203\316\267", nil)
    @label_3.text = my_translate("\316\225\317\200\317\216\316\275\317\205\316\274\316\277:", nil)
    @surname.text = ''
    @label_2.text = my_translate("\316\214\316\275\316\277\316\274\316\261:", nil)
    @name.text = ''
    @label_4.text = my_translate("\316\224\316\271\316\265\317\215\316\270\317\205\316\275\317\203\316\267:", nil)
    @label_5.text = my_translate("\316\244\316\267\316\273\316\255\317\206\317\211\316\275\316\277:", nil)
    @pushButton_2.text = my_translate("\316\221\316\275\316\261\316\266\316\256\317\204\316\267\317\203\316\267", nil)
    @pushButton.text = my_translate("\316\225\316\274\317\206\316\254\316\275\316\271\317\203\316\267 \316\214\316\273\317\211\316\275", nil)
    end # retranslateUi

    def retranslate_ui(personFrame)
        retranslateUi(personFrame)
    end

end

module Ui
    class PersonFrame < Ui_PersonFrame
    end
end  # module Ui

