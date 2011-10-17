=begin
** Form generated from reading ui file 'exams_main.ui'
**
** Created: Mon Oct 17 17:49:59 2011
**      by: Qt User Interface Compiler version 4.7.2
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_ExamsFrame
    attr_reader :gridLayout_2
    attr_reader :groupBox_2
    attr_reader :gridLayout
    attr_reader :searchBox
    attr_reader :formLayout_2
    attr_reader :verticalSpacer
    attr_reader :pushButton_2
    attr_reader :pushButton
    attr_reader :widget
    attr_reader :formLayout
    attr_reader :label_7
    attr_reader :examSetPatient
    attr_reader :label_8
    attr_reader :examSetDoctor
    attr_reader :label_12
    attr_reader :widget_2
    attr_reader :horizontalLayout_2
    attr_reader :checkBox_2
    attr_reader :examSetFromDate
    attr_reader :label
    attr_reader :widget_3
    attr_reader :horizontalLayout_3
    attr_reader :checkBox_3
    attr_reader :examSetToDate
    attr_reader :titleLabel
    attr_reader :resultsTable

    def setupUi(examsFrame)
    if examsFrame.objectName.nil?
        examsFrame.objectName = "examsFrame"
    end
    examsFrame.resize(903, 592)
    examsFrame.frameShape = Qt::Frame::StyledPanel
    examsFrame.frameShadow = Qt::Frame::Raised
    @gridLayout_2 = Qt::GridLayout.new(examsFrame)
    @gridLayout_2.objectName = "gridLayout_2"
    @groupBox_2 = Qt::GroupBox.new(examsFrame)
    @groupBox_2.objectName = "groupBox_2"
    @sizePolicy = Qt::SizePolicy.new(Qt::SizePolicy::Maximum, Qt::SizePolicy::MinimumExpanding)
    @sizePolicy.setHorizontalStretch(0)
    @sizePolicy.setVerticalStretch(0)
    @sizePolicy.heightForWidth = @groupBox_2.sizePolicy.hasHeightForWidth
    @groupBox_2.sizePolicy = @sizePolicy
    @gridLayout = Qt::GridLayout.new(@groupBox_2)
    @gridLayout.objectName = "gridLayout"
    @searchBox = Qt::Widget.new(@groupBox_2)
    @searchBox.objectName = "searchBox"
    @searchBox.enabled = true
    @sizePolicy1 = Qt::SizePolicy.new(Qt::SizePolicy::MinimumExpanding, Qt::SizePolicy::Preferred)
    @sizePolicy1.setHorizontalStretch(0)
    @sizePolicy1.setVerticalStretch(0)
    @sizePolicy1.heightForWidth = @searchBox.sizePolicy.hasHeightForWidth
    @searchBox.sizePolicy = @sizePolicy1
    @searchBox.styleSheet = ""
    @formLayout_2 = Qt::FormLayout.new(@searchBox)
    @formLayout_2.objectName = "formLayout_2"
    @formLayout_2.fieldGrowthPolicy = Qt::FormLayout::ExpandingFieldsGrow
    @verticalSpacer = Qt::SpacerItem.new(20, 40, Qt::SizePolicy::Minimum, Qt::SizePolicy::Expanding)

    @formLayout_2.setItem(1, Qt::FormLayout::FieldRole, @verticalSpacer)

    @pushButton_2 = Qt::PushButton.new(@searchBox)
    @pushButton_2.objectName = "pushButton_2"
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/images/Search.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @pushButton_2.icon = icon

    @formLayout_2.setWidget(2, Qt::FormLayout::LabelRole, @pushButton_2)

    @pushButton = Qt::PushButton.new(@searchBox)
    @pushButton.objectName = "pushButton"

    @formLayout_2.setWidget(2, Qt::FormLayout::FieldRole, @pushButton)

    @widget = Qt::Widget.new(@searchBox)
    @widget.objectName = "widget"
    @formLayout = Qt::FormLayout.new(@widget)
    @formLayout.objectName = "formLayout"
    @label_7 = Qt::Label.new(@widget)
    @label_7.objectName = "label_7"

    @formLayout.setWidget(0, Qt::FormLayout::LabelRole, @label_7)

    @examSetPatient = Qt::LineEdit.new(@widget)
    @examSetPatient.objectName = "examSetPatient"
    @examSetPatient.frame = true

    @formLayout.setWidget(0, Qt::FormLayout::FieldRole, @examSetPatient)

    @label_8 = Qt::Label.new(@widget)
    @label_8.objectName = "label_8"

    @formLayout.setWidget(1, Qt::FormLayout::LabelRole, @label_8)

    @examSetDoctor = Qt::LineEdit.new(@widget)
    @examSetDoctor.objectName = "examSetDoctor"

    @formLayout.setWidget(1, Qt::FormLayout::FieldRole, @examSetDoctor)

    @label_12 = Qt::Label.new(@widget)
    @label_12.objectName = "label_12"

    @formLayout.setWidget(2, Qt::FormLayout::LabelRole, @label_12)

    @widget_2 = Qt::Widget.new(@widget)
    @widget_2.objectName = "widget_2"
    @horizontalLayout_2 = Qt::HBoxLayout.new(@widget_2)
    @horizontalLayout_2.objectName = "horizontalLayout_2"
    @checkBox_2 = Qt::CheckBox.new(@widget_2)
    @checkBox_2.objectName = "checkBox_2"

    @horizontalLayout_2.addWidget(@checkBox_2)

    @examSetFromDate = MyDateWidget.new(@widget_2)
    @examSetFromDate.objectName = "examSetFromDate"
    @examSetFromDate.enabled = false
    @examSetFromDate.calendarPopup = true

    @horizontalLayout_2.addWidget(@examSetFromDate)


    @formLayout.setWidget(2, Qt::FormLayout::FieldRole, @widget_2)

    @label = Qt::Label.new(@widget)
    @label.objectName = "label"

    @formLayout.setWidget(3, Qt::FormLayout::LabelRole, @label)

    @widget_3 = Qt::Widget.new(@widget)
    @widget_3.objectName = "widget_3"
    @horizontalLayout_3 = Qt::HBoxLayout.new(@widget_3)
    @horizontalLayout_3.objectName = "horizontalLayout_3"
    @checkBox_3 = Qt::CheckBox.new(@widget_3)
    @checkBox_3.objectName = "checkBox_3"

    @horizontalLayout_3.addWidget(@checkBox_3)

    @examSetToDate = MyDateWidget.new(@widget_3)
    @examSetToDate.objectName = "examSetToDate"
    @examSetToDate.enabled = false
    @examSetToDate.calendarPopup = true

    @horizontalLayout_3.addWidget(@examSetToDate)


    @formLayout.setWidget(3, Qt::FormLayout::FieldRole, @widget_3)


    @formLayout_2.setWidget(0, Qt::FormLayout::LabelRole, @widget)


    @gridLayout.addWidget(@searchBox, 1, 0, 1, 3)


    @gridLayout_2.addWidget(@groupBox_2, 1, 0, 1, 1)

    @titleLabel = Qt::Label.new(examsFrame)
    @titleLabel.objectName = "titleLabel"

    @gridLayout_2.addWidget(@titleLabel, 0, 0, 1, 2)

    @resultsTable = PatientTable.new(examsFrame)
    @resultsTable.objectName = "resultsTable"
    @sizePolicy2 = Qt::SizePolicy.new(Qt::SizePolicy::MinimumExpanding, Qt::SizePolicy::Expanding)
    @sizePolicy2.setHorizontalStretch(0)
    @sizePolicy2.setVerticalStretch(0)
    @sizePolicy2.heightForWidth = @resultsTable.sizePolicy.hasHeightForWidth
    @resultsTable.sizePolicy = @sizePolicy2
    @resultsTable.styleSheet = "background-color: rgb(220, 220, 220);"
    @resultsTable.setProperty("showDropIndicator", Qt::Variant.new(false))

    @gridLayout_2.addWidget(@resultsTable, 1, 1, 2, 1)


    retranslateUi(examsFrame)
    Qt::Object.connect(@pushButton_2, SIGNAL('clicked()'), examsFrame, SLOT('search()'))
    Qt::Object.connect(@pushButton, SIGNAL('clicked()'), examsFrame, SLOT('show_all()'))
    Qt::Object.connect(@examSetPatient, SIGNAL('returnPressed()'), @pushButton_2, SLOT('click()'))
    Qt::Object.connect(@examSetDoctor, SIGNAL('returnPressed()'), @pushButton_2, SLOT('click()'))
    Qt::Object.connect(@pushButton, SIGNAL('clicked()'), @examSetPatient, SLOT('clear()'))
    Qt::Object.connect(@pushButton, SIGNAL('clicked()'), @examSetDoctor, SLOT('clear()'))
    Qt::Object.connect(@pushButton, SIGNAL('clicked(bool)'), @checkBox_2, SLOT('setChecked(bool)'))
    Qt::Object.connect(@pushButton, SIGNAL('clicked(bool)'), @checkBox_3, SLOT('setChecked(bool)'))
    Qt::Object.connect(@checkBox_2, SIGNAL('toggled(bool)'), @examSetFromDate, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@checkBox_3, SIGNAL('clicked(bool)'), @examSetToDate, SLOT('setEnabled(bool)'))

    Qt::MetaObject.connectSlotsByName(examsFrame)
    end # setupUi

    def setup_ui(examsFrame)
        setupUi(examsFrame)
    end

    def retranslateUi(examsFrame)
    examsFrame.windowTitle = Qt::Application.translate("ExamsFrame", "Frame", nil, Qt::Application::UnicodeUTF8)
    @groupBox_2.title = Qt::Application.translate("ExamsFrame", "\316\221\316\275\316\261\316\266\316\256\317\204\316\267\317\203\316\267", nil, Qt::Application::UnicodeUTF8)
    @pushButton_2.text = Qt::Application.translate("ExamsFrame", "\316\221\316\275\316\261\316\266\316\256\317\204\316\267\317\203\316\267", nil, Qt::Application::UnicodeUTF8)
    @pushButton.text = Qt::Application.translate("ExamsFrame", "\316\225\316\274\317\206\316\254\316\275\316\271\317\203\316\267 \316\214\316\273\317\211\316\275", nil, Qt::Application::UnicodeUTF8)
    @label_7.text = Qt::Application.translate("ExamsFrame", "\316\225\317\200\317\216\316\275\317\205\316\274\316\277 \316\221\317\203\316\270\316\265\316\275\316\256:", nil, Qt::Application::UnicodeUTF8)
    @examSetPatient.toolTip = Qt::Application.translate("ExamsFrame", "\316\244\316\277 \317\214\316\275\316\277\316\274\316\261 \317\204\316\277\317\205 \316\261\317\203\316\270\316\265\316\275\316\256 \317\200\316\277\317\205 \316\261\316\275\316\261\316\266\316\267\317\204\316\265\316\257\317\204\316\265", nil, Qt::Application::UnicodeUTF8)
    @label_8.text = Qt::Application.translate("ExamsFrame", "\316\225\317\200\317\216\316\275\317\205\316\274\316\277 \316\231\316\261\317\204\317\201\316\277\317\215:", nil, Qt::Application::UnicodeUTF8)
    @examSetDoctor.toolTip = Qt::Application.translate("ExamsFrame", "\316\244\316\277 \316\265\317\200\317\216\316\275\317\205\316\274\316\277 \317\204\316\277\317\205 \316\231\316\261\317\204\317\201\316\277\317\215 \317\200\316\277\317\205 \317\200\316\261\317\201\316\255\317\200\316\265\316\274\317\210\316\265 \317\204\316\277 \316\261\317\203\316\270\316\265\316\275\316\256", nil, Qt::Application::UnicodeUTF8)
    @label_12.text = Qt::Application.translate("ExamsFrame", "\316\221\317\200\317\214:", nil, Qt::Application::UnicodeUTF8)
    @checkBox_2.text = ''
    @label.text = Qt::Application.translate("ExamsFrame", "\316\234\316\255\317\207\317\201\316\271:", nil, Qt::Application::UnicodeUTF8)
    @checkBox_3.text = ''
    @titleLabel.text = Qt::Application.translate("ExamsFrame", "<center><h1>\316\225\316\276\316\265\317\204\316\254\317\203\316\265\316\271\317\202</h1></center>", nil, Qt::Application::UnicodeUTF8)
    @resultsTable.toolTip = Qt::Application.translate("ExamsFrame", "\316\225\316\264\317\216 \317\206\316\261\316\257\316\275\316\277\316\275\317\204\316\261\316\271 \317\204\316\261 \316\261\317\200\316\277\317\204\316\265\316\273\316\255\317\203\316\274\316\261\317\204\316\261 \317\204\316\267\317\202 \316\221\316\275\316\261\316\266\316\256\317\204\316\267\317\203\316\267\317\202 \317\203\316\261\317\202.", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(examsFrame)
        retranslateUi(examsFrame)
    end

end

module Ui
    class ExamsFrame < Ui_ExamsFrame
    end
end  # module Ui

