=begin
** Form generated from reading ui file 'edit_doctor.ui'
**
** Created: Tue Jul 19 20:14:41 2011
**      by: Qt User Interface Compiler version 4.7.2
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_Form
    attr_reader :gridLayout
    attr_reader :groupBox
    attr_reader :formLayout
    attr_reader :label
    attr_reader :name
    attr_reader :label_2
    attr_reader :surname
    attr_reader :label_3
    attr_reader :phone
    attr_reader :label_4
    attr_reader :address
    attr_reader :buttonBox
    attr_reader :groupBox_2
    attr_reader :horizontalLayout
    attr_reader :patientList
    attr_reader :verticalSpacer

    def setupUi(form)
    if form.objectName.nil?
        form.objectName = "form"
    end
    form.windowModality = Qt::WindowModal
    form.resize(960, 427)
    form.autoFillBackground = false
    @gridLayout = Qt::GridLayout.new(form)
    @gridLayout.objectName = "gridLayout"
    @groupBox = Qt::GroupBox.new(form)
    @groupBox.objectName = "groupBox"
    @formLayout = Qt::FormLayout.new(@groupBox)
    @formLayout.objectName = "formLayout"
    @formLayout.fieldGrowthPolicy = Qt::FormLayout::ExpandingFieldsGrow
    @label = Qt::Label.new(@groupBox)
    @label.objectName = "label"

    @formLayout.setWidget(1, Qt::FormLayout::LabelRole, @label)

    @name = Qt::LineEdit.new(@groupBox)
    @name.objectName = "name"

    @formLayout.setWidget(1, Qt::FormLayout::FieldRole, @name)

    @label_2 = Qt::Label.new(@groupBox)
    @label_2.objectName = "label_2"

    @formLayout.setWidget(3, Qt::FormLayout::LabelRole, @label_2)

    @surname = Qt::LineEdit.new(@groupBox)
    @surname.objectName = "surname"

    @formLayout.setWidget(3, Qt::FormLayout::FieldRole, @surname)

    @label_3 = Qt::Label.new(@groupBox)
    @label_3.objectName = "label_3"

    @formLayout.setWidget(6, Qt::FormLayout::LabelRole, @label_3)

    @phone = Qt::LineEdit.new(@groupBox)
    @phone.objectName = "phone"

    @formLayout.setWidget(6, Qt::FormLayout::FieldRole, @phone)

    @label_4 = Qt::Label.new(@groupBox)
    @label_4.objectName = "label_4"

    @formLayout.setWidget(8, Qt::FormLayout::LabelRole, @label_4)

    @address = Qt::LineEdit.new(@groupBox)
    @address.objectName = "address"

    @formLayout.setWidget(8, Qt::FormLayout::FieldRole, @address)

    @buttonBox = Qt::DialogButtonBox.new(@groupBox)
    @buttonBox.objectName = "buttonBox"
    @buttonBox.standardButtons = Qt::DialogButtonBox::Cancel|Qt::DialogButtonBox::Reset|Qt::DialogButtonBox::Save

    @formLayout.setWidget(9, Qt::FormLayout::FieldRole, @buttonBox)


    @gridLayout.addWidget(@groupBox, 0, 0, 1, 1)

    @groupBox_2 = Qt::GroupBox.new(form)
    @groupBox_2.objectName = "groupBox_2"
    @horizontalLayout = Qt::HBoxLayout.new(@groupBox_2)
    @horizontalLayout.objectName = "horizontalLayout"
    @patientList = PatientList.new(@groupBox_2)
    @patientList.objectName = "patientList"

    @horizontalLayout.addWidget(@patientList)


    @gridLayout.addWidget(@groupBox_2, 0, 1, 2, 1)

    @verticalSpacer = Qt::SpacerItem.new(20, 204, Qt::SizePolicy::Minimum, Qt::SizePolicy::Expanding)

    @gridLayout.addItem(@verticalSpacer, 1, 0, 1, 1)


    retranslateUi(form)
    Qt::Object.connect(@buttonBox, SIGNAL('accepted()'), form, SLOT('accepted()'))
    Qt::Object.connect(@buttonBox, SIGNAL('rejected()'), form, SLOT('cancel()'))

    Qt::MetaObject.connectSlotsByName(form)
    end # setupUi

    def setup_ui(form)
        setupUi(form)
    end

    def retranslateUi(form)
    form.windowTitle = Qt::Application.translate("Form", "\316\232\316\261\317\201\317\204\316\255\316\273\316\261 \316\231\316\261\317\204\317\201\316\277\317\205", nil, Qt::Application::UnicodeUTF8)
    @groupBox.title = Qt::Application.translate("Form", "\316\243\317\204\316\277\316\271\317\207\316\265\316\257\316\261 \316\231\316\261\317\204\317\201\316\277\317\215", nil, Qt::Application::UnicodeUTF8)
    @label.text = Qt::Application.translate("Form", "\316\214\316\275\316\277\316\274\316\261:", nil, Qt::Application::UnicodeUTF8)
    @label_2.text = Qt::Application.translate("Form", "\316\225\317\200\317\216\316\275\317\205\316\274\316\277:", nil, Qt::Application::UnicodeUTF8)
    @label_3.text = Qt::Application.translate("Form", "\316\224\316\271\316\265\317\215\316\270\317\205\316\275\317\203\316\267:", nil, Qt::Application::UnicodeUTF8)
    @phone.text = ''
    @label_4.text = Qt::Application.translate("Form", "\316\244\316\267\316\273\316\255\317\206\317\211\316\275\316\277:", nil, Qt::Application::UnicodeUTF8)
    @address.text = ''
    @groupBox_2.title = Qt::Application.translate("Form", "\316\233\316\257\317\203\317\204\316\261 \316\221\317\203\316\270\316\265\316\275\317\216\316\275", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(form)
        retranslateUi(form)
    end

end

module Ui
    class Form < Ui_Form
    end
end  # module Ui

