=begin
** Form generated from reading ui file 'edit_doctor.ui'
**
** Created: Κυρ 31. Ιουλ 17:12:53 2011
**      by: Qt User Interface Compiler version 4.6.3
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_DoctorForm
    attr_reader :verticalLayout
    attr_reader :groupBox_2
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
    attr_reader :labelPatientList
    attr_reader :patientTable

    def setupUi(doctorForm)
    if doctorForm.objectName.nil?
        doctorForm.objectName = "doctorForm"
    end
    doctorForm.windowModality = Qt::WindowModal
    doctorForm.resize(960, 427)
    doctorForm.autoFillBackground = false
    @verticalLayout = Qt::VBoxLayout.new(doctorForm)
    @verticalLayout.objectName = "verticalLayout"
    @groupBox_2 = Qt::GroupBox.new(doctorForm)
    @groupBox_2.objectName = "groupBox_2"
    @formLayout = Qt::FormLayout.new(@groupBox_2)
    @formLayout.objectName = "formLayout"
    @label = Qt::Label.new(@groupBox_2)
    @label.objectName = "label"

    @formLayout.setWidget(0, Qt::FormLayout::LabelRole, @label)

    @name = Qt::LineEdit.new(@groupBox_2)
    @name.objectName = "name"

    @formLayout.setWidget(0, Qt::FormLayout::FieldRole, @name)

    @label_2 = Qt::Label.new(@groupBox_2)
    @label_2.objectName = "label_2"

    @formLayout.setWidget(1, Qt::FormLayout::LabelRole, @label_2)

    @surname = Qt::LineEdit.new(@groupBox_2)
    @surname.objectName = "surname"

    @formLayout.setWidget(1, Qt::FormLayout::FieldRole, @surname)

    @label_3 = Qt::Label.new(@groupBox_2)
    @label_3.objectName = "label_3"

    @formLayout.setWidget(2, Qt::FormLayout::LabelRole, @label_3)

    @phone = Qt::LineEdit.new(@groupBox_2)
    @phone.objectName = "phone"

    @formLayout.setWidget(2, Qt::FormLayout::FieldRole, @phone)

    @label_4 = Qt::Label.new(@groupBox_2)
    @label_4.objectName = "label_4"

    @formLayout.setWidget(3, Qt::FormLayout::LabelRole, @label_4)

    @address = Qt::LineEdit.new(@groupBox_2)
    @address.objectName = "address"

    @formLayout.setWidget(3, Qt::FormLayout::FieldRole, @address)

    @buttonBox = Qt::DialogButtonBox.new(@groupBox_2)
    @buttonBox.objectName = "buttonBox"
    @buttonBox.standardButtons = Qt::DialogButtonBox::Cancel|Qt::DialogButtonBox::Reset|Qt::DialogButtonBox::Save

    @formLayout.setWidget(4, Qt::FormLayout::FieldRole, @buttonBox)


    @verticalLayout.addWidget(@groupBox_2)

    @labelPatientList = Qt::Label.new(doctorForm)
    @labelPatientList.objectName = "labelPatientList"

    @verticalLayout.addWidget(@labelPatientList)

    @patientTable = PatientTable.new(doctorForm)
    @patientTable.objectName = "patientTable"

    @verticalLayout.addWidget(@patientTable)


    retranslateUi(doctorForm)
    Qt::Object.connect(@buttonBox, SIGNAL('accepted()'), doctorForm, SLOT('save()'))

    Qt::MetaObject.connectSlotsByName(doctorForm)
    end # setupUi

    def setup_ui(doctorForm)
        setupUi(doctorForm)
    end

    def retranslateUi(doctorForm)
    doctorForm.windowTitle = Qt::Application.translate("DoctorForm", "\316\232\316\261\317\201\317\204\316\255\316\273\316\261 \316\231\316\261\317\204\317\201\316\277\317\205", nil, Qt::Application::UnicodeUTF8)
    @groupBox_2.title = Qt::Application.translate("DoctorForm", "\316\233\316\257\317\203\317\204\316\261 \316\221\317\203\316\270\316\265\316\275\317\216\316\275", nil, Qt::Application::UnicodeUTF8)
    @label.text = Qt::Application.translate("DoctorForm", "\316\214\316\275\316\277\316\274\316\261:", nil, Qt::Application::UnicodeUTF8)
    @label_2.text = Qt::Application.translate("DoctorForm", "\316\225\317\200\317\216\316\275\317\205\316\274\316\277:", nil, Qt::Application::UnicodeUTF8)
    @label_3.text = Qt::Application.translate("DoctorForm", "\316\224\316\271\316\265\317\215\316\270\317\205\316\275\317\203\316\267:", nil, Qt::Application::UnicodeUTF8)
    @phone.text = ''
    @label_4.text = Qt::Application.translate("DoctorForm", "\316\244\316\267\316\273\316\255\317\206\317\211\316\275\316\277:", nil, Qt::Application::UnicodeUTF8)
    @address.text = ''
    @labelPatientList.text = Qt::Application.translate("DoctorForm", "  \316\233\316\257\317\203\317\204\316\261 \316\261\317\203\316\270\316\265\316\275\317\216\316\275", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(doctorForm)
        retranslateUi(doctorForm)
    end

end

module Ui
    class DoctorForm < Ui_DoctorForm
    end
end  # module Ui

