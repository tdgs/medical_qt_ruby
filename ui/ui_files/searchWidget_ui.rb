=begin
** Form generated from reading ui file 'searchWidget.ui'
**
** Created: Fri Oct 7 18:44:28 2011
**      by: Qt User Interface Compiler version 4.7.2
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_SearchForm
    attr_reader :actionSearchPatient
    attr_reader :gridLayout_2
    attr_reader :tabWidget
    attr_reader :patientTab
    attr_reader :gridLayout
    attr_reader :patientTable
    attr_reader :patient_info
    attr_reader :formLayout
    attr_reader :label_2
    attr_reader :patientName
    attr_reader :label_3
    attr_reader :patientSurname
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
    attr_reader :pushButton
    attr_reader :doctorTab
    attr_reader :gridLayout_3
    attr_reader :doctorTable
    attr_reader :patient_info_3
    attr_reader :formLayout_3
    attr_reader :label_14
    attr_reader :doctorName
    attr_reader :label_15
    attr_reader :doctorSurname
    attr_reader :label_16
    attr_reader :doctorAddress
    attr_reader :label_17
    attr_reader :doctorPhone
    attr_reader :label_19
    attr_reader :doctorEmail
    attr_reader :pushButton_3
    attr_reader :examSetTab
    attr_reader :verticalLayout_2
    attr_reader :patient_info_2
    attr_reader :formLayout_2
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
    attr_reader :pushButton_2
    attr_reader :examSetTable

    def setupUi(searchForm)
    if searchForm.objectName.nil?
        searchForm.objectName = "searchForm"
    end
    searchForm.resize(1252, 749)
    @actionSearchPatient = Qt::Action.new(searchForm)
    @actionSearchPatient.objectName = "actionSearchPatient"
    @actionSearchPatient.checkable = true
    @gridLayout_2 = Qt::GridLayout.new(searchForm)
    @gridLayout_2.objectName = "gridLayout_2"
    @tabWidget = Qt::TabWidget.new(searchForm)
    @tabWidget.objectName = "tabWidget"
    @tabWidget.autoFillBackground = false
    @tabWidget.iconSize = Qt::Size.new(32, 32)
    @tabWidget.usesScrollButtons = true
    @tabWidget.documentMode = false
    @tabWidget.tabsClosable = false
    @tabWidget.movable = false
    @patientTab = Qt::Widget.new()
    @patientTab.objectName = "patientTab"
    @gridLayout = Qt::GridLayout.new(@patientTab)
    @gridLayout.objectName = "gridLayout"
    @patientTable = PatientTable.new(@patientTab)
    @patientTable.objectName = "patientTable"
    @sizePolicy = Qt::SizePolicy.new(Qt::SizePolicy::MinimumExpanding, Qt::SizePolicy::Expanding)
    @sizePolicy.setHorizontalStretch(0)
    @sizePolicy.setVerticalStretch(0)
    @sizePolicy.heightForWidth = @patientTable.sizePolicy.hasHeightForWidth
    @patientTable.sizePolicy = @sizePolicy
    @patientTable.setProperty("showDropIndicator", Qt::Variant.new(false))

    @gridLayout.addWidget(@patientTable, 0, 2, 1, 1)

    @patient_info = Qt::Frame.new(@patientTab)
    @patient_info.objectName = "patient_info"
    @sizePolicy1 = Qt::SizePolicy.new(Qt::SizePolicy::Maximum, Qt::SizePolicy::Preferred)
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
    @font.pointSize = 10
    @label_2.font = @font

    @formLayout.setWidget(0, Qt::FormLayout::LabelRole, @label_2)

    @patientName = Qt::LineEdit.new(@patient_info)
    @patientName.objectName = "patientName"
    @sizePolicy2 = Qt::SizePolicy.new(Qt::SizePolicy::MinimumExpanding, Qt::SizePolicy::Fixed)
    @sizePolicy2.setHorizontalStretch(0)
    @sizePolicy2.setVerticalStretch(0)
    @sizePolicy2.heightForWidth = @patientName.sizePolicy.hasHeightForWidth
    @patientName.sizePolicy = @sizePolicy2

    @formLayout.setWidget(0, Qt::FormLayout::FieldRole, @patientName)

    @label_3 = Qt::Label.new(@patient_info)
    @label_3.objectName = "label_3"
    @label_3.font = @font

    @formLayout.setWidget(1, Qt::FormLayout::LabelRole, @label_3)

    @patientSurname = Qt::LineEdit.new(@patient_info)
    @patientSurname.objectName = "patientSurname"
    @sizePolicy2.heightForWidth = @patientSurname.sizePolicy.hasHeightForWidth
    @patientSurname.sizePolicy = @sizePolicy2

    @formLayout.setWidget(1, Qt::FormLayout::FieldRole, @patientSurname)

    @label_4 = Qt::Label.new(@patient_info)
    @label_4.objectName = "label_4"
    @label_4.font = @font

    @formLayout.setWidget(2, Qt::FormLayout::LabelRole, @label_4)

    @patientAddress = Qt::LineEdit.new(@patient_info)
    @patientAddress.objectName = "patientAddress"
    @sizePolicy2.heightForWidth = @patientAddress.sizePolicy.hasHeightForWidth
    @patientAddress.sizePolicy = @sizePolicy2

    @formLayout.setWidget(2, Qt::FormLayout::FieldRole, @patientAddress)

    @label_5 = Qt::Label.new(@patient_info)
    @label_5.objectName = "label_5"
    @label_5.font = @font

    @formLayout.setWidget(3, Qt::FormLayout::LabelRole, @label_5)

    @patientPhone = Qt::LineEdit.new(@patient_info)
    @patientPhone.objectName = "patientPhone"
    @sizePolicy2.heightForWidth = @patientPhone.sizePolicy.hasHeightForWidth
    @patientPhone.sizePolicy = @sizePolicy2

    @formLayout.setWidget(3, Qt::FormLayout::FieldRole, @patientPhone)

    @label_9 = Qt::Label.new(@patient_info)
    @label_9.objectName = "label_9"
    @label_9.font = @font

    @formLayout.setWidget(4, Qt::FormLayout::LabelRole, @label_9)

    @widget = Qt::Widget.new(@patient_info)
    @widget.objectName = "widget"
    @horizontalLayout = Qt::HBoxLayout.new(@widget)
    @horizontalLayout.objectName = "horizontalLayout"
    @checkBox = Qt::CheckBox.new(@widget)
    @checkBox.objectName = "checkBox"

    @horizontalLayout.addWidget(@checkBox)

    @patientBirthDate = MyDateWidget.new(@widget)
    @patientBirthDate.objectName = "patientBirthDate"
    @patientBirthDate.enabled = false
    @sizePolicy3 = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Fixed)
    @sizePolicy3.setHorizontalStretch(0)
    @sizePolicy3.setVerticalStretch(0)
    @sizePolicy3.heightForWidth = @patientBirthDate.sizePolicy.hasHeightForWidth
    @patientBirthDate.sizePolicy = @sizePolicy3
    @patientBirthDate.calendarPopup = true

    @horizontalLayout.addWidget(@patientBirthDate)


    @formLayout.setWidget(4, Qt::FormLayout::FieldRole, @widget)

    @label_6 = Qt::Label.new(@patient_info)
    @label_6.objectName = "label_6"
    @label_6.font = @font

    @formLayout.setWidget(5, Qt::FormLayout::LabelRole, @label_6)

    @patientEmail = Qt::LineEdit.new(@patient_info)
    @patientEmail.objectName = "patientEmail"
    @sizePolicy2.heightForWidth = @patientEmail.sizePolicy.hasHeightForWidth
    @patientEmail.sizePolicy = @sizePolicy2

    @formLayout.setWidget(5, Qt::FormLayout::FieldRole, @patientEmail)

    @pushButton = Qt::PushButton.new(@patient_info)
    @pushButton.objectName = "pushButton"
    @sizePolicy3.heightForWidth = @pushButton.sizePolicy.hasHeightForWidth
    @pushButton.sizePolicy = @sizePolicy3
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/images/Search.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @pushButton.icon = icon
    @pushButton.default = true

    @formLayout.setWidget(6, Qt::FormLayout::FieldRole, @pushButton)


    @gridLayout.addWidget(@patient_info, 0, 0, 1, 1)

    icon1 = Qt::Icon.new
    icon1.addPixmap(Qt::Pixmap.new(":/images/PatientMale.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @tabWidget.addTab(@patientTab, icon1, Qt::Application.translate("SearchForm", "\316\221\317\203\316\270\316\265\316\275\316\265\316\257\317\202", nil, Qt::Application::UnicodeUTF8))
    @doctorTab = Qt::Widget.new()
    @doctorTab.objectName = "doctorTab"
    @gridLayout_3 = Qt::GridLayout.new(@doctorTab)
    @gridLayout_3.objectName = "gridLayout_3"
    @doctorTable = DoctorTable.new(@doctorTab)
    @doctorTable.objectName = "doctorTable"
    @sizePolicy.heightForWidth = @doctorTable.sizePolicy.hasHeightForWidth
    @doctorTable.sizePolicy = @sizePolicy

    @gridLayout_3.addWidget(@doctorTable, 0, 2, 1, 1)

    @patient_info_3 = Qt::Frame.new(@doctorTab)
    @patient_info_3.objectName = "patient_info_3"
    @sizePolicy1.heightForWidth = @patient_info_3.sizePolicy.hasHeightForWidth
    @patient_info_3.sizePolicy = @sizePolicy1
    @patient_info_3.minimumSize = Qt::Size.new(400, 200)
    @patient_info_3.frameShape = Qt::Frame::StyledPanel
    @patient_info_3.frameShadow = Qt::Frame::Raised
    @formLayout_3 = Qt::FormLayout.new(@patient_info_3)
    @formLayout_3.objectName = "formLayout_3"
    @formLayout_3.fieldGrowthPolicy = Qt::FormLayout::ExpandingFieldsGrow
    @label_14 = Qt::Label.new(@patient_info_3)
    @label_14.objectName = "label_14"
    @label_14.font = @font

    @formLayout_3.setWidget(0, Qt::FormLayout::LabelRole, @label_14)

    @doctorName = Qt::LineEdit.new(@patient_info_3)
    @doctorName.objectName = "doctorName"
    @sizePolicy2.heightForWidth = @doctorName.sizePolicy.hasHeightForWidth
    @doctorName.sizePolicy = @sizePolicy2

    @formLayout_3.setWidget(0, Qt::FormLayout::FieldRole, @doctorName)

    @label_15 = Qt::Label.new(@patient_info_3)
    @label_15.objectName = "label_15"
    @label_15.font = @font

    @formLayout_3.setWidget(2, Qt::FormLayout::LabelRole, @label_15)

    @doctorSurname = Qt::LineEdit.new(@patient_info_3)
    @doctorSurname.objectName = "doctorSurname"
    @sizePolicy2.heightForWidth = @doctorSurname.sizePolicy.hasHeightForWidth
    @doctorSurname.sizePolicy = @sizePolicy2

    @formLayout_3.setWidget(2, Qt::FormLayout::FieldRole, @doctorSurname)

    @label_16 = Qt::Label.new(@patient_info_3)
    @label_16.objectName = "label_16"
    @label_16.font = @font

    @formLayout_3.setWidget(4, Qt::FormLayout::LabelRole, @label_16)

    @doctorAddress = Qt::LineEdit.new(@patient_info_3)
    @doctorAddress.objectName = "doctorAddress"
    @sizePolicy2.heightForWidth = @doctorAddress.sizePolicy.hasHeightForWidth
    @doctorAddress.sizePolicy = @sizePolicy2

    @formLayout_3.setWidget(4, Qt::FormLayout::FieldRole, @doctorAddress)

    @label_17 = Qt::Label.new(@patient_info_3)
    @label_17.objectName = "label_17"
    @label_17.font = @font

    @formLayout_3.setWidget(6, Qt::FormLayout::LabelRole, @label_17)

    @doctorPhone = Qt::LineEdit.new(@patient_info_3)
    @doctorPhone.objectName = "doctorPhone"
    @sizePolicy2.heightForWidth = @doctorPhone.sizePolicy.hasHeightForWidth
    @doctorPhone.sizePolicy = @sizePolicy2

    @formLayout_3.setWidget(6, Qt::FormLayout::FieldRole, @doctorPhone)

    @label_19 = Qt::Label.new(@patient_info_3)
    @label_19.objectName = "label_19"
    @label_19.font = @font

    @formLayout_3.setWidget(8, Qt::FormLayout::LabelRole, @label_19)

    @doctorEmail = Qt::LineEdit.new(@patient_info_3)
    @doctorEmail.objectName = "doctorEmail"
    @sizePolicy2.heightForWidth = @doctorEmail.sizePolicy.hasHeightForWidth
    @doctorEmail.sizePolicy = @sizePolicy2

    @formLayout_3.setWidget(8, Qt::FormLayout::FieldRole, @doctorEmail)

    @pushButton_3 = Qt::PushButton.new(@patient_info_3)
    @pushButton_3.objectName = "pushButton_3"
    @pushButton_3.icon = icon

    @formLayout_3.setWidget(9, Qt::FormLayout::FieldRole, @pushButton_3)


    @gridLayout_3.addWidget(@patient_info_3, 0, 1, 1, 1)

    icon2 = Qt::Icon.new
    icon2.addPixmap(Qt::Pixmap.new(":/images/DoctorMale.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @tabWidget.addTab(@doctorTab, icon2, Qt::Application.translate("SearchForm", "\316\231\316\261\317\204\317\201\316\277\316\257", nil, Qt::Application::UnicodeUTF8))
    @examSetTab = Qt::Widget.new()
    @examSetTab.objectName = "examSetTab"
    @verticalLayout_2 = Qt::VBoxLayout.new(@examSetTab)
    @verticalLayout_2.objectName = "verticalLayout_2"
    @patient_info_2 = Qt::Frame.new(@examSetTab)
    @patient_info_2.objectName = "patient_info_2"
    @sizePolicy4 = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Preferred)
    @sizePolicy4.setHorizontalStretch(0)
    @sizePolicy4.setVerticalStretch(0)
    @sizePolicy4.heightForWidth = @patient_info_2.sizePolicy.hasHeightForWidth
    @patient_info_2.sizePolicy = @sizePolicy4
    @patient_info_2.minimumSize = Qt::Size.new(400, 200)
    @patient_info_2.frameShape = Qt::Frame::StyledPanel
    @patient_info_2.frameShadow = Qt::Frame::Raised
    @formLayout_2 = Qt::FormLayout.new(@patient_info_2)
    @formLayout_2.objectName = "formLayout_2"
    @formLayout_2.fieldGrowthPolicy = Qt::FormLayout::ExpandingFieldsGrow
    @label_7 = Qt::Label.new(@patient_info_2)
    @label_7.objectName = "label_7"

    @formLayout_2.setWidget(0, Qt::FormLayout::LabelRole, @label_7)

    @examSetPatient = Qt::LineEdit.new(@patient_info_2)
    @examSetPatient.objectName = "examSetPatient"
    @examSetPatient.frame = true

    @formLayout_2.setWidget(0, Qt::FormLayout::FieldRole, @examSetPatient)

    @label_8 = Qt::Label.new(@patient_info_2)
    @label_8.objectName = "label_8"

    @formLayout_2.setWidget(1, Qt::FormLayout::LabelRole, @label_8)

    @examSetDoctor = Qt::LineEdit.new(@patient_info_2)
    @examSetDoctor.objectName = "examSetDoctor"

    @formLayout_2.setWidget(1, Qt::FormLayout::FieldRole, @examSetDoctor)

    @label_12 = Qt::Label.new(@patient_info_2)
    @label_12.objectName = "label_12"

    @formLayout_2.setWidget(2, Qt::FormLayout::LabelRole, @label_12)

    @widget_2 = Qt::Widget.new(@patient_info_2)
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


    @formLayout_2.setWidget(2, Qt::FormLayout::FieldRole, @widget_2)

    @label = Qt::Label.new(@patient_info_2)
    @label.objectName = "label"

    @formLayout_2.setWidget(3, Qt::FormLayout::LabelRole, @label)

    @widget_3 = Qt::Widget.new(@patient_info_2)
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


    @formLayout_2.setWidget(3, Qt::FormLayout::FieldRole, @widget_3)


    @verticalLayout_2.addWidget(@patient_info_2)

    @pushButton_2 = Qt::PushButton.new(@examSetTab)
    @pushButton_2.objectName = "pushButton_2"
    @sizePolicy3.heightForWidth = @pushButton_2.sizePolicy.hasHeightForWidth
    @pushButton_2.sizePolicy = @sizePolicy3

    @verticalLayout_2.addWidget(@pushButton_2)

    @examSetTable = ExamSetTable.new(@examSetTab)
    @examSetTable.objectName = "examSetTable"
    @sizePolicy5 = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Expanding)
    @sizePolicy5.setHorizontalStretch(0)
    @sizePolicy5.setVerticalStretch(0)
    @sizePolicy5.heightForWidth = @examSetTable.sizePolicy.hasHeightForWidth
    @examSetTable.sizePolicy = @sizePolicy5

    @verticalLayout_2.addWidget(@examSetTable)

    icon3 = Qt::Icon.new
    icon3.addPixmap(Qt::Pixmap.new(":/images/Calendar.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @tabWidget.addTab(@examSetTab, icon3, Qt::Application.translate("SearchForm", "\316\225\317\200\316\271\317\203\316\272\316\255\317\210\316\265\316\271\317\202", nil, Qt::Application::UnicodeUTF8))

    @gridLayout_2.addWidget(@tabWidget, 0, 1, 1, 1)


    retranslateUi(searchForm)
    Qt::Object.connect(@checkBox, SIGNAL('clicked(bool)'), @patientBirthDate, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@checkBox_2, SIGNAL('clicked(bool)'), @examSetFromDate, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@checkBox_3, SIGNAL('clicked(bool)'), @examSetToDate, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@pushButton_2, SIGNAL('clicked()'), searchForm, SLOT('searchExamSet()'))
    Qt::Object.connect(@pushButton, SIGNAL('clicked()'), searchForm, SLOT('searchPatient()'))
    Qt::Object.connect(@pushButton_3, SIGNAL('clicked()'), searchForm, SLOT('searchDoctor()'))
    Qt::Object.connect(@patientName, SIGNAL('returnPressed()'), searchForm, SLOT('searchPatient()'))
    Qt::Object.connect(@patientSurname, SIGNAL('returnPressed()'), searchForm, SLOT('searchPatient()'))
    Qt::Object.connect(@patientSurname, SIGNAL('returnPressed()'), searchForm, SLOT('searchPatient()'))
    Qt::Object.connect(@patientAddress, SIGNAL('selectionChanged()'), searchForm, SLOT('searchPatient()'))
    Qt::Object.connect(@patientPhone, SIGNAL('returnPressed()'), searchForm, SLOT('searchPatient()'))

    @tabWidget.setCurrentIndex(0)


    Qt::MetaObject.connectSlotsByName(searchForm)
    end # setupUi

    def setup_ui(searchForm)
        setupUi(searchForm)
    end

    def retranslateUi(searchForm)
    searchForm.windowTitle = Qt::Application.translate("SearchForm", "Form", nil, Qt::Application::UnicodeUTF8)
    @actionSearchPatient.text = Qt::Application.translate("SearchForm", "\316\221\316\275\316\261\316\266\316\267\317\204\316\267\317\203\316\267 \316\221\317\203\316\270\316\265\316\275\316\256", nil, Qt::Application::UnicodeUTF8)
    @actionSearchPatient.shortcut = Qt::Application.translate("SearchForm", "Return", nil, Qt::Application::UnicodeUTF8)
    @label_2.text = Qt::Application.translate("SearchForm", "\316\214\316\275\316\277\316\274\316\261:", nil, Qt::Application::UnicodeUTF8)
    @label_3.text = Qt::Application.translate("SearchForm", "\316\225\317\200\317\216\316\275\317\205\316\274\316\277:", nil, Qt::Application::UnicodeUTF8)
    @patientSurname.text = ''
    @label_4.text = Qt::Application.translate("SearchForm", "\316\224\316\271\316\265\317\215\316\270\317\205\316\275\317\203\316\267:", nil, Qt::Application::UnicodeUTF8)
    @label_5.text = Qt::Application.translate("SearchForm", "\316\244\316\267\316\273\316\255\317\206\317\211\316\275\316\277:", nil, Qt::Application::UnicodeUTF8)
    @label_9.text = Qt::Application.translate("SearchForm", "\316\227\316\274\316\265\317\201. \316\223\316\255\316\275:", nil, Qt::Application::UnicodeUTF8)
    @checkBox.text = ''
    @label_6.text = Qt::Application.translate("SearchForm", "e-mail:", nil, Qt::Application::UnicodeUTF8)
    @pushButton.text = Qt::Application.translate("SearchForm", "\316\221\316\275\316\261\316\266\316\256\317\204\316\267\317\203\316\267", nil, Qt::Application::UnicodeUTF8)
    @tabWidget.setTabText(@tabWidget.indexOf(@patientTab), Qt::Application.translate("SearchForm", "\316\221\317\203\316\270\316\265\316\275\316\265\316\257\317\202", nil, Qt::Application::UnicodeUTF8))
    @tabWidget.setTabToolTip(@tabWidget.indexOf(@patientTab), Qt::Application.translate("SearchForm", "\316\221\316\275\316\261\316\266\316\256\317\204\316\267\317\203\316\267 \316\221\317\203\316\270\316\265\316\275\317\216\316\275", nil, Qt::Application::UnicodeUTF8))
    @label_14.text = Qt::Application.translate("SearchForm", "\316\214\316\275\316\277\316\274\316\261:", nil, Qt::Application::UnicodeUTF8)
    @label_15.text = Qt::Application.translate("SearchForm", "\316\225\317\200\317\216\316\275\317\205\316\274\316\277:", nil, Qt::Application::UnicodeUTF8)
    @label_16.text = Qt::Application.translate("SearchForm", "\316\224\316\271\316\265\317\215\316\270\317\205\316\275\317\203\316\267:", nil, Qt::Application::UnicodeUTF8)
    @label_17.text = Qt::Application.translate("SearchForm", "\316\244\316\267\316\273\316\255\317\206\317\211\316\275\316\277:", nil, Qt::Application::UnicodeUTF8)
    @label_19.text = Qt::Application.translate("SearchForm", "e-mail:", nil, Qt::Application::UnicodeUTF8)
    @pushButton_3.text = Qt::Application.translate("SearchForm", "\316\221\316\275\316\261\316\266\316\256\317\204\316\267\317\203\316\267", nil, Qt::Application::UnicodeUTF8)
    @tabWidget.setTabText(@tabWidget.indexOf(@doctorTab), Qt::Application.translate("SearchForm", "\316\231\316\261\317\204\317\201\316\277\316\257", nil, Qt::Application::UnicodeUTF8))
    @label_7.text = Qt::Application.translate("SearchForm", "\316\225\317\200\317\216\316\275\317\205\316\274\316\277 \316\221\317\203\316\270\316\265\316\275\316\256:", nil, Qt::Application::UnicodeUTF8)
    @label_8.text = Qt::Application.translate("SearchForm", "\316\225\317\200\317\216\316\275\317\205\316\274\316\277 \316\231\316\261\317\204\317\201\316\277\317\215:", nil, Qt::Application::UnicodeUTF8)
    @label_12.text = Qt::Application.translate("SearchForm", "\316\221\317\200\317\214:", nil, Qt::Application::UnicodeUTF8)
    @checkBox_2.text = ''
    @label.text = Qt::Application.translate("SearchForm", "\316\234\316\255\317\207\317\201\316\271:", nil, Qt::Application::UnicodeUTF8)
    @checkBox_3.text = ''
    @pushButton_2.text = Qt::Application.translate("SearchForm", "\316\221\316\275\316\261\316\266\316\256\317\204\316\267\317\203\316\267", nil, Qt::Application::UnicodeUTF8)
    @tabWidget.setTabText(@tabWidget.indexOf(@examSetTab), Qt::Application.translate("SearchForm", "\316\225\317\200\316\271\317\203\316\272\316\255\317\210\316\265\316\271\317\202", nil, Qt::Application::UnicodeUTF8))
    end # retranslateUi

    def retranslate_ui(searchForm)
        retranslateUi(searchForm)
    end

end

module Ui
    class SearchForm < Ui_SearchForm
    end
end  # module Ui

