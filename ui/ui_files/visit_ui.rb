# encoding: utf-8
=begin
** Form generated from reading ui file 'visit.ui'
**
** Created: Wed Oct 19 14:28:39 2011
**      by: Qt User Interface Compiler version 4.7.4
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_EditVisit
    attr_reader :actionSave
    attr_reader :actionPatient
    attr_reader :actionPrint
    attr_reader :gridLayout
    attr_reader :label_4
    attr_reader :groupBox
    attr_reader :formLayout
    attr_reader :label
    attr_reader :label_2
    attr_reader :doctorCombo
    attr_reader :label_3
    attr_reader :dateEdit
    attr_reader :patientFullName
    attr_reader :editExamSet

    def setupUi(editVisit)
    if editVisit.objectName.nil?
        editVisit.objectName = "editVisit"
    end
    editVisit.resize(866, 451)
    @actionSave = Qt::Action.new(editVisit)
    @actionSave.objectName = "actionSave"
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/images/document-save.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @actionSave.icon = icon
    @actionPatient = Qt::Action.new(editVisit)
    @actionPatient.objectName = "actionPatient"
    icon1 = Qt::Icon.new
    icon1.addPixmap(Qt::Pixmap.new(":/images/user-identity.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @actionPatient.icon = icon1
    @actionPrint = Qt::Action.new(editVisit)
    @actionPrint.objectName = "actionPrint"
    icon2 = Qt::Icon.new
    icon2.addPixmap(Qt::Pixmap.new(":/images/document-print.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @actionPrint.icon = icon2
    @gridLayout = Qt::GridLayout.new(editVisit)
    @gridLayout.objectName = "gridLayout"
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

    @gridLayout.addWidget(@label_4, 0, 0, 1, 1)

    @groupBox = Qt::GroupBox.new(editVisit)
    @groupBox.objectName = "groupBox"
    @sizePolicy1 = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Maximum)
    @sizePolicy1.setHorizontalStretch(0)
    @sizePolicy1.setVerticalStretch(0)
    @sizePolicy1.heightForWidth = @groupBox.sizePolicy.hasHeightForWidth
    @groupBox.sizePolicy = @sizePolicy1
    @font1 = Qt::Font.new
    @font1.pointSize = 10
    @font1.bold = false
    @font1.weight = 50
    @groupBox.font = @font1
    @groupBox.flat = true
    @groupBox.checkable = false
    @formLayout = Qt::FormLayout.new(@groupBox)
    @formLayout.objectName = "formLayout"
    @label = Qt::Label.new(@groupBox)
    @label.objectName = "label"

    @formLayout.setWidget(0, Qt::FormLayout::LabelRole, @label)

    @label_2 = Qt::Label.new(@groupBox)
    @label_2.objectName = "label_2"

    @formLayout.setWidget(2, Qt::FormLayout::LabelRole, @label_2)

    @doctorCombo = DoctorCombo.new(@groupBox)
    @doctorCombo.objectName = "doctorCombo"
    @doctorCombo.editable = true
    @doctorCombo.insertPolicy = Qt::ComboBox::NoInsert

    @formLayout.setWidget(2, Qt::FormLayout::FieldRole, @doctorCombo)

    @label_3 = Qt::Label.new(@groupBox)
    @label_3.objectName = "label_3"

    @formLayout.setWidget(3, Qt::FormLayout::LabelRole, @label_3)

    @dateEdit = MyDateWidget.new(@groupBox)
    @dateEdit.objectName = "dateEdit"
    @dateEdit.calendarPopup = true

    @formLayout.setWidget(3, Qt::FormLayout::FieldRole, @dateEdit)

    @patientFullName = Qt::LineEdit.new(@groupBox)
    @patientFullName.objectName = "patientFullName"
    @sizePolicy2 = Qt::SizePolicy.new(Qt::SizePolicy::Maximum, Qt::SizePolicy::Fixed)
    @sizePolicy2.setHorizontalStretch(0)
    @sizePolicy2.setVerticalStretch(0)
    @sizePolicy2.heightForWidth = @patientFullName.sizePolicy.hasHeightForWidth
    @patientFullName.sizePolicy = @sizePolicy2
    @patientFullName.readOnly = true

    @formLayout.setWidget(0, Qt::FormLayout::FieldRole, @patientFullName)


    @gridLayout.addWidget(@groupBox, 1, 0, 1, 1)

    @editExamSet = EditExamSet.new(editVisit)
    @editExamSet.objectName = "editExamSet"
    @font2 = Qt::Font.new
    @font2.pointSize = 10
    @editExamSet.font = @font2

    @gridLayout.addWidget(@editExamSet, 2, 0, 1, 1)

    Qt::Widget.setTabOrder(@patientFullName, @doctorCombo)
    Qt::Widget.setTabOrder(@doctorCombo, @dateEdit)

    retranslateUi(editVisit)
    Qt::Object.connect(@actionPatient, SIGNAL('triggered()'), editVisit, SLOT('patient_info()'))
    Qt::Object.connect(@actionPrint, SIGNAL('triggered()'), editVisit, SLOT('print()'))
    Qt::Object.connect(@actionSave, SIGNAL('triggered()'), editVisit, SLOT('save()'))

    Qt::MetaObject.connectSlotsByName(editVisit)
    end # setupUi

    def setup_ui(editVisit)
        setupUi(editVisit)
    end

    def retranslateUi(editVisit)
    editVisit.windowTitle = my_translate("Form", nil)
    @actionSave.text = my_translate("\316\221\317\200\316\277\316\270\316\256\316\272\316\265\317\205\317\203\316\267", nil)
    @actionSave.toolTip = my_translate("\316\221\317\200\316\277\316\270\316\256\316\272\316\265\317\205\317\203\316\267 \316\243\317\204\316\277\316\271\317\207\316\265\316\257\317\211\316\275", nil)
    @actionPatient.text = my_translate("\316\232\316\261\317\201\317\204\316\255\316\273\316\261 \316\221\317\203\316\270\316\265\316\275\316\256", nil)
    @actionPatient.toolTip = my_translate("\316\225\317\200\316\271\317\203\317\204\317\201\316\277\317\206\316\256 \317\203\316\267\316\275 \316\232\316\261\317\201\317\204\316\255\316\273\316\261 \317\204\316\277\317\205 \316\221\317\203\316\270\316\265\316\275\316\256", nil)
    @actionPrint.text = my_translate("\316\225\316\272\317\204\317\215\317\200\317\211\317\203\316\267", nil)
    @actionPrint.toolTip = my_translate("\316\225\316\272\317\204\317\215\317\200\317\211\317\203\316\267 \317\204\316\267\317\202 \316\225\317\200\316\257\317\203\316\272\316\265\317\210\316\267\317\202", nil)
    @label_4.text = my_translate("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n" \
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n" \
"p, li { white-space: pre-wrap; }\n" \
"</style></head><body style=\" font-family:'Ubuntu'; font-size:14pt; font-weight:400; font-style:normal;\">\n" \
"<p align=\"center\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">\316\232\316\261\317\201\317\204\316\255\316\273\316\261 \316\225\317\200\316\257\317\203\316\272\316\265\317\210\316\267\317\202</p></body></html>", nil)
    @groupBox.title = my_translate("\316\243\317\204\316\277\316\271\317\207\316\265\316\257\316\261 \316\225\317\200\316\257\317\203\316\272\316\265\317\210\316\267\317\202", nil)
    @label.text = my_translate("\316\221\317\203\316\270\316\265\316\275\316\256\317\202:", nil)
    @label_2.text = my_translate("\316\240\316\261\317\201\316\261\317\200\316\255\316\274\317\200\317\211\316\275 \316\231\316\261\317\204\317\201\317\214\317\202:", nil)
    @label_3.text = my_translate("\316\227\316\274\316\265\317\201\316\277\316\274\316\267\316\275\316\257\316\261 \316\225\317\200\316\257\317\203\316\272\316\265\317\210\316\267\317\202:", nil)
    end # retranslateUi

    def retranslate_ui(editVisit)
        retranslateUi(editVisit)
    end

end

module Ui
    class EditVisit < Ui_EditVisit
    end
end  # module Ui

