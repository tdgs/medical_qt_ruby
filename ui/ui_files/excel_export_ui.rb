# encoding: utf-8
=begin
** Form generated from reading ui file 'excel_export.ui'
**
** Created: Mon Oct 31 18:58:11 2011
**      by: Qt User Interface Compiler version 4.7.2
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_ExcelExport
    attr_reader :gridLayout_2
    attr_reader :label
    attr_reader :frame
    attr_reader :formLayout
    attr_reader :label_2
    attr_reader :radioButton
    attr_reader :selectionOnly
    attr_reader :buttonBox
    attr_reader :frame_2
    attr_reader :gridLayout
    attr_reader :label_3
    attr_reader :fileNameEdit
    attr_reader :toolButton

    def setupUi(excelExport)
    if excelExport.objectName.nil?
        excelExport.objectName = "excelExport"
    end
    excelExport.resize(333, 201)
    @gridLayout_2 = Qt::GridLayout.new(excelExport)
    @gridLayout_2.objectName = "gridLayout_2"
    @label = Qt::Label.new(excelExport)
    @label.objectName = "label"

    @gridLayout_2.addWidget(@label, 0, 0, 1, 1)

    @frame = Qt::Frame.new(excelExport)
    @frame.objectName = "frame"
    @frame.frameShape = Qt::Frame::StyledPanel
    @frame.frameShadow = Qt::Frame::Raised
    @formLayout = Qt::FormLayout.new(@frame)
    @formLayout.objectName = "formLayout"
    @formLayout.fieldGrowthPolicy = Qt::FormLayout::ExpandingFieldsGrow
    @label_2 = Qt::Label.new(@frame)
    @label_2.objectName = "label_2"

    @formLayout.setWidget(0, Qt::FormLayout::LabelRole, @label_2)

    @radioButton = Qt::RadioButton.new(@frame)
    @radioButton.objectName = "radioButton"
    @radioButton.checked = true

    @formLayout.setWidget(1, Qt::FormLayout::LabelRole, @radioButton)

    @selectionOnly = Qt::RadioButton.new(@frame)
    @selectionOnly.objectName = "selectionOnly"

    @formLayout.setWidget(2, Qt::FormLayout::LabelRole, @selectionOnly)


    @gridLayout_2.addWidget(@frame, 1, 0, 1, 1)

    @buttonBox = Qt::DialogButtonBox.new(excelExport)
    @buttonBox.objectName = "buttonBox"
    @buttonBox.orientation = Qt::Horizontal
    @buttonBox.standardButtons = Qt::DialogButtonBox::Cancel|Qt::DialogButtonBox::Ok

    @gridLayout_2.addWidget(@buttonBox, 3, 0, 1, 1)

    @frame_2 = Qt::Frame.new(excelExport)
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


    @gridLayout_2.addWidget(@frame_2, 2, 0, 1, 1)


    retranslateUi(excelExport)
    Qt::Object.connect(@buttonBox, SIGNAL('accepted()'), excelExport, SLOT('accept()'))
    Qt::Object.connect(@buttonBox, SIGNAL('rejected()'), excelExport, SLOT('reject()'))
    Qt::Object.connect(@toolButton, SIGNAL('clicked()'), excelExport, SLOT('showFileDialog()'))

    Qt::MetaObject.connectSlotsByName(excelExport)
    end # setupUi

    def setup_ui(excelExport)
        setupUi(excelExport)
    end

    def retranslateUi(excelExport)
    excelExport.windowTitle = my_translate("Dialog", nil)
    @label.text = my_translate("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n" \
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n" \
"p, li { white-space: pre-wrap; }\n" \
"</style></head><body style=\" font-family:'Ubuntu'; font-size:9pt; font-weight:400; font-style:normal;\">\n" \
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:12pt; font-weight:600;\">\316\225\316\276\316\261\316\263\317\211\316\263\316\256 \316\243\316\265 Excel</span></p></body></html>", nil)
    @label_2.text = my_translate("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n" \
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n" \
"p, li { white-space: pre-wrap; }\n" \
"</style></head><body style=\" font-family:'Ubuntu'; font-size:9pt; font-weight:400; font-style:normal;\">\n" \
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-weight:600;\">\316\240\316\277\316\271\316\261 \317\203\317\204\316\277\316\271\317\207\316\265\316\257\316\261 \316\270\316\255\316\273\316\265\317\204\316\265 \316\275\316\261 \317\200\316\265\317\201\316\271\316\255\317\207\316\277\316\275\317\204\316\261\316\271;</span></p></body></html>", nil)
    @radioButton.text = my_translate("\316\214\316\273\316\261 \316\244\316\261 \316\243\317\204\316\277\316\271\317\207\316\265\316\257\316\261", nil)
    @selectionOnly.text = my_translate("\316\225\317\200\316\271\316\273\316\265\316\263\316\274\316\255\316\275\316\261 \316\243\317\204\316\277\316\271\317\207\316\265\316\257\316\261", nil)
    @label_3.text = my_translate("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n" \
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n" \
"p, li { white-space: pre-wrap; }\n" \
"</style></head><body style=\" font-family:'Ubuntu'; font-size:9pt; font-weight:400; font-style:normal;\">\n" \
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-weight:600;\">\316\225\317\200\316\271\316\273\316\277\316\263\316\256 \316\221\317\201\317\207\316\265\316\257\316\277\317\205 \316\221\317\200\316\277\316\270\316\256\316\272\316\265\317\205\317\203\316\267\317\202</span></p></body></html>", nil)
    @toolButton.text = my_translate("\316\225\317\200\316\271\316\273\316\277\316\263\316\256...", nil)
    end # retranslateUi

    def retranslate_ui(excelExport)
        retranslateUi(excelExport)
    end

end

module Ui
    class ExcelExport < Ui_ExcelExport
    end
end  # module Ui

