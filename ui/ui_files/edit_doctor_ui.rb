# encoding: utf-8
=begin
** Form generated from reading ui file 'edit_doctor.ui'
**
** Created: Wed Oct 19 13:43:49 2011
**      by: Qt User Interface Compiler version 4.7.4
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_DoctorForm
    attr_reader :actionSave
    attr_reader :gridLayout_2
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
    attr_reader :groupBox
    attr_reader :gridLayout
    attr_reader :patientTable
    attr_reader :label_5

    def setupUi(doctorForm)
    if doctorForm.objectName.nil?
        doctorForm.objectName = "doctorForm"
    end
    doctorForm.windowModality = Qt::WindowModal
    doctorForm.resize(960, 427)
    doctorForm.autoFillBackground = false
    @actionSave = Qt::Action.new(doctorForm)
    @actionSave.objectName = "actionSave"
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/images/document-save.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @actionSave.icon = icon
    @gridLayout_2 = Qt::GridLayout.new(doctorForm)
    @gridLayout_2.objectName = "gridLayout_2"
    @groupBox_2 = Qt::GroupBox.new(doctorForm)
    @groupBox_2.objectName = "groupBox_2"
    @formLayout = Qt::FormLayout.new(@groupBox_2)
    @formLayout.objectName = "formLayout"
    @formLayout.fieldGrowthPolicy = Qt::FormLayout::ExpandingFieldsGrow
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


    @gridLayout_2.addWidget(@groupBox_2, 1, 0, 1, 1)

    @groupBox = Qt::GroupBox.new(doctorForm)
    @groupBox.objectName = "groupBox"
    @gridLayout = Qt::GridLayout.new(@groupBox)
    @gridLayout.objectName = "gridLayout"
    @patientTable = PatientTable.new(@groupBox)
    @patientTable.objectName = "patientTable"

    @gridLayout.addWidget(@patientTable, 0, 0, 1, 1)


    @gridLayout_2.addWidget(@groupBox, 1, 1, 1, 1)

    @label_5 = Qt::Label.new(doctorForm)
    @label_5.objectName = "label_5"

    @gridLayout_2.addWidget(@label_5, 0, 0, 1, 2)


    retranslateUi(doctorForm)
    Qt::Object.connect(@actionSave, SIGNAL('triggered()'), doctorForm, SLOT('save()'))

    Qt::MetaObject.connectSlotsByName(doctorForm)
    end # setupUi

    def setup_ui(doctorForm)
        setupUi(doctorForm)
    end

    def retranslateUi(doctorForm)
    doctorForm.windowTitle = my_translate("\316\232\316\261\317\201\317\204\316\255\316\273\316\261 \316\231\316\261\317\204\317\201\316\277\317\205", nil)
    @actionSave.text = my_translate("\316\221\317\200\316\277\316\270\316\256\316\272\316\265\317\205\317\203\316\267", nil)
    @actionSave.toolTip = my_translate("\316\221\317\200\316\277\316\270\316\256\316\272\316\265\317\205\317\203\316\267 \316\231\316\261\317\204\317\201\316\277\317\215", nil)
    @groupBox_2.title = my_translate("\316\243\317\204\316\277\316\271\317\207\316\265\316\257\316\261 \316\231\316\261\317\204\317\201\316\277\317\215", nil)
    @label.text = my_translate("\316\214\316\275\316\277\316\274\316\261:", nil)
    @label_2.text = my_translate("\316\225\317\200\317\216\316\275\317\205\316\274\316\277:", nil)
    @label_3.text = my_translate("\316\224\316\271\316\265\317\215\316\270\317\205\316\275\317\203\316\267:", nil)
    @phone.text = ''
    @label_4.text = my_translate("\316\244\316\267\316\273\316\255\317\206\317\211\316\275\316\277:", nil)
    @address.text = ''
    @groupBox.title = my_translate("\316\221\317\203\316\270\316\265\316\275\316\265\316\257\317\202", nil)
    @label_5.text = my_translate("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n" \
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n" \
"p, li { white-space: pre-wrap; }\n" \
"</style></head><body style=\" font-family:'Ubuntu'; font-size:9pt; font-weight:400; font-style:normal;\">\n" \
"<p align=\"center\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:12pt; font-weight:600;\">\316\232\316\261\317\201\317\204\316\255\316\273\316\261 \316\231\316\261\317\204\317\201\316\277\317\215</span></p></body></html>", nil)
    end # retranslateUi

    def retranslate_ui(doctorForm)
        retranslateUi(doctorForm)
    end

end

module Ui
    class DoctorForm < Ui_DoctorForm
    end
end  # module Ui

