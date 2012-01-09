# encoding: utf-8
=begin
** Form generated from reading ui file 'doctor_export.ui'
**
** Created: Thu Nov 10 13:30:22 2011
**      by: Qt User Interface Compiler version 4.7.4
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_DoctorExcelExport
    attr_reader :verticalLayout_2
    attr_reader :label
    attr_reader :frame
    attr_reader :gridLayout_2
    attr_reader :label_2
    attr_reader :allRadio
    attr_reader :radioButton_2
    attr_reader :dateEdit
    attr_reader :radioButton_3
    attr_reader :patientCombo
    attr_reader :frame_2
    attr_reader :gridLayout
    attr_reader :label_3
    attr_reader :fileNameEdit
    attr_reader :toolButton
    attr_reader :buttonBox

    def setupUi(doctorExcelExport)
    if doctorExcelExport.objectName.nil?
        doctorExcelExport.objectName = "doctorExcelExport"
    end
    doctorExcelExport.resize(333, 305)
    @verticalLayout_2 = Qt::VBoxLayout.new(doctorExcelExport)
    @verticalLayout_2.objectName = "verticalLayout_2"
    @label = Qt::Label.new(doctorExcelExport)
    @label.objectName = "label"

    @verticalLayout_2.addWidget(@label)

    @frame = Qt::Frame.new(doctorExcelExport)
    @frame.objectName = "frame"
    @frame.frameShape = Qt::Frame::StyledPanel
    @frame.frameShadow = Qt::Frame::Raised
    @gridLayout_2 = Qt::GridLayout.new(@frame)
    @gridLayout_2.objectName = "gridLayout_2"
    @label_2 = Qt::Label.new(@frame)
    @label_2.objectName = "label_2"

    @gridLayout_2.addWidget(@label_2, 0, 0, 1, 2)

    @allRadio = Qt::RadioButton.new(@frame)
    @allRadio.objectName = "allRadio"
    @allRadio.checked = true

    @gridLayout_2.addWidget(@allRadio, 1, 0, 1, 1)

    @radioButton_2 = Qt::RadioButton.new(@frame)
    @radioButton_2.objectName = "radioButton_2"

    @gridLayout_2.addWidget(@radioButton_2, 2, 0, 1, 1)

    @dateEdit = Qt::DateEdit.new(@frame)
    @dateEdit.objectName = "dateEdit"
    @dateEdit.enabled = false
    @dateEdit.calendarPopup = true

    @gridLayout_2.addWidget(@dateEdit, 2, 1, 1, 1)

    @radioButton_3 = Qt::RadioButton.new(@frame)
    @radioButton_3.objectName = "radioButton_3"

    @gridLayout_2.addWidget(@radioButton_3, 3, 0, 1, 1)

    @patientCombo = PatientCombo.new(@frame)
    @patientCombo.objectName = "patientCombo"
    @patientCombo.enabled = false

    @gridLayout_2.addWidget(@patientCombo, 3, 1, 1, 1)


    @verticalLayout_2.addWidget(@frame)

    @frame_2 = Qt::Frame.new(doctorExcelExport)
    @frame_2.objectName = "frame_2"
    @frame_2.frameShape = Qt::Frame::StyledPanel
    @frame_2.frameShadow = Qt::Frame::Raised
    @gridLayout = Qt::GridLayout.new(@frame_2)
    @gridLayout.objectName = "gridLayout"
    @label_3 = Qt::Label.new(@frame_2)
    @label_3.objectName = "label_3"

    @gridLayout.addWidget(@label_3, 0, 0, 1, 2)

    @fileNameEdit = Qt::LineEdit.new(@frame_2)
    @fileNameEdit.objectName = "fileNameEdit"

    @gridLayout.addWidget(@fileNameEdit, 1, 0, 1, 1)

    @toolButton = Qt::ToolButton.new(@frame_2)
    @toolButton.objectName = "toolButton"

    @gridLayout.addWidget(@toolButton, 1, 1, 1, 1)


    @verticalLayout_2.addWidget(@frame_2)

    @buttonBox = Qt::DialogButtonBox.new(doctorExcelExport)
    @buttonBox.objectName = "buttonBox"
    @buttonBox.orientation = Qt::Horizontal
    @buttonBox.standardButtons = Qt::DialogButtonBox::Cancel|Qt::DialogButtonBox::Ok

    @verticalLayout_2.addWidget(@buttonBox)


    retranslateUi(doctorExcelExport)
    Qt::Object.connect(@buttonBox, SIGNAL('accepted()'), doctorExcelExport, SLOT('accept()'))
    Qt::Object.connect(@buttonBox, SIGNAL('rejected()'), doctorExcelExport, SLOT('reject()'))
    Qt::Object.connect(@toolButton, SIGNAL('clicked()'), doctorExcelExport, SLOT('showFileDialog()'))
    Qt::Object.connect(@radioButton_2, SIGNAL('toggled(bool)'), @dateEdit, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@radioButton_3, SIGNAL('toggled(bool)'), @patientCombo, SLOT('setEnabled(bool)'))

    Qt::MetaObject.connectSlotsByName(doctorExcelExport)
    end # setupUi

    def setup_ui(doctorExcelExport)
        setupUi(doctorExcelExport)
    end

    def retranslateUi(doctorExcelExport)
    doctorExcelExport.windowTitle = my_translate("Dialog", nil)
    @label.text = my_translate("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n" \
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n" \
"p, li { white-space: pre-wrap; }\n" \
"</style></head><body style=\" font-family:'Ubuntu'; font-size:9pt; font-weight:400; font-style:normal;\">\n" \
"<p align=\"center\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:10pt; font-weight:600;\">\316\221\316\275\316\261\317\206\316\277\317\201\316\254 \316\225\317\200\316\271\317\203\316\272\316\255\317\210\316\265\317\211\316\275 \316\272\316\261\316\271 \316\221\317\203\316\270\316\265\316\275\317\216\316\275 \316\231\316\261\317\204\317\201\316\277\317\215</span></p></body></html>", nil)
    @label_2.text = my_translate("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n" \
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n" \
"p, li { white-space: pre-wrap; }\n" \
"</style></head><body style=\" font-family:'Ubuntu'; font-size:9pt; font-weight:400; font-style:normal;\">\n" \
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-weight:600;\">\316\240\316\277\316\271\316\265\317\202 \316\265\317\200\316\271\317\203\316\272\316\255\317\210\316\265\316\271\317\202 \316\270\316\255\316\273\316\265\317\204\316\265 \316\275\316\261 \317\200\316\265\317\201\316\271\316\255\317\207\316\277\316\275\317\204\316\261\316\271;</span></p></body></html>", nil)
    @allRadio.text = my_translate("\316\214\316\273\316\265\317\202", nil)
    @radioButton_2.text = my_translate("\316\221\317\200\317\214 \316\227\316\274\316\265\317\201\316\277\316\274\316\267\316\275\316\257\316\261:", nil)
    @dateEdit.displayFormat = my_translate("d/M/yy", nil)
    @radioButton_3.text = my_translate("\316\225\316\275\317\214\317\202 \316\221\317\203\316\270\316\265\316\275\316\256", nil)
    @label_3.text = my_translate("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n" \
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n" \
"p, li { white-space: pre-wrap; }\n" \
"</style></head><body style=\" font-family:'Ubuntu'; font-size:9pt; font-weight:400; font-style:normal;\">\n" \
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-weight:600;\">\316\225\317\200\316\271\316\273\316\277\316\263\316\256 \316\221\317\201\317\207\316\265\316\257\316\277\317\205 \316\221\317\200\316\277\316\270\316\256\316\272\316\265\317\205\317\203\316\267\317\202</span></p></body></html>", nil)
    @toolButton.text = my_translate("\316\225\317\200\316\271\316\273\316\277\316\263\316\256...", nil)
    end # retranslateUi

    def retranslate_ui(doctorExcelExport)
        retranslateUi(doctorExcelExport)
    end

end

module Ui
    class DoctorExcelExport < Ui_DoctorExcelExport
    end
end  # module Ui

