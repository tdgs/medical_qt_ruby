=begin
** Form generated from reading ui file 'visit.ui'
**
** Created: Fri Aug 5 11:56:43 2011
**      by: Qt User Interface Compiler version 4.7.2
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_EditVisit
    attr_reader :verticalLayout
    attr_reader :label_4
    attr_reader :line
    attr_reader :frame
    attr_reader :formLayout
    attr_reader :label
    attr_reader :patientFullName
    attr_reader :label_2
    attr_reader :doctorCombo
    attr_reader :label_3
    attr_reader :dateEdit
    attr_reader :editExamSet
    attr_reader :buttonBox

    def setupUi(editVisit)
    if editVisit.objectName.nil?
        editVisit.objectName = "editVisit"
    end
    editVisit.resize(829, 750)
    @verticalLayout = Qt::VBoxLayout.new(editVisit)
    @verticalLayout.objectName = "verticalLayout"
    @label_4 = Qt::Label.new(editVisit)
    @label_4.objectName = "label_4"

    @verticalLayout.addWidget(@label_4)

    @line = Qt::Frame.new(editVisit)
    @line.objectName = "line"
    @line.setFrameShape(Qt::Frame::HLine)
    @line.setFrameShadow(Qt::Frame::Sunken)

    @verticalLayout.addWidget(@line)

    @frame = Qt::Frame.new(editVisit)
    @frame.objectName = "frame"
    @frame.frameShape = Qt::Frame::StyledPanel
    @frame.frameShadow = Qt::Frame::Raised
    @formLayout = Qt::FormLayout.new(@frame)
    @formLayout.objectName = "formLayout"
    @label = Qt::Label.new(@frame)
    @label.objectName = "label"

    @formLayout.setWidget(0, Qt::FormLayout::LabelRole, @label)

    @patientFullName = Qt::LineEdit.new(@frame)
    @patientFullName.objectName = "patientFullName"
    @patientFullName.readOnly = true

    @formLayout.setWidget(0, Qt::FormLayout::FieldRole, @patientFullName)

    @label_2 = Qt::Label.new(@frame)
    @label_2.objectName = "label_2"

    @formLayout.setWidget(1, Qt::FormLayout::LabelRole, @label_2)

    @doctorCombo = DoctorCombo.new(@frame)
    @doctorCombo.objectName = "doctorCombo"
    @doctorCombo.editable = true
    @doctorCombo.insertPolicy = Qt::ComboBox::NoInsert

    @formLayout.setWidget(1, Qt::FormLayout::FieldRole, @doctorCombo)

    @label_3 = Qt::Label.new(@frame)
    @label_3.objectName = "label_3"

    @formLayout.setWidget(2, Qt::FormLayout::LabelRole, @label_3)

    @dateEdit = MyDateWidget.new(@frame)
    @dateEdit.objectName = "dateEdit"
    @dateEdit.calendarPopup = true

    @formLayout.setWidget(2, Qt::FormLayout::FieldRole, @dateEdit)


    @verticalLayout.addWidget(@frame)

    @editExamSet = EditExamSet.new(editVisit)
    @editExamSet.objectName = "editExamSet"

    @verticalLayout.addWidget(@editExamSet)

    @buttonBox = Qt::DialogButtonBox.new(editVisit)
    @buttonBox.objectName = "buttonBox"
    @buttonBox.standardButtons = Qt::DialogButtonBox::Ok

    @verticalLayout.addWidget(@buttonBox)


    retranslateUi(editVisit)
    Qt::Object.connect(@buttonBox, SIGNAL('accepted()'), editVisit, SLOT('save()'))

    Qt::MetaObject.connectSlotsByName(editVisit)
    end # setupUi

    def setup_ui(editVisit)
        setupUi(editVisit)
    end

    def retranslateUi(editVisit)
    editVisit.windowTitle = Qt::Application.translate("EditVisit", "Form", nil, Qt::Application::UnicodeUTF8)
    @label_4.text = Qt::Application.translate("EditVisit", "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n" \
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n" \
"p, li { white-space: pre-wrap; }\n" \
"</style></head><body style=\" font-family:'Ubuntu'; font-size:9pt; font-weight:400; font-style:normal;\">\n" \
"<p align=\"center\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:12pt; font-weight:600;\">\316\243\317\204\316\277\316\271\317\207\316\265\316\257\316\261 \316\225\317\200\316\257\317\203\316\272\316\265\317\210\316\267\317\202</span></p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @label.text = Qt::Application.translate("EditVisit", "\316\221\317\203\316\270\316\265\316\275\316\256\317\202:", nil, Qt::Application::UnicodeUTF8)
    @label_2.text = Qt::Application.translate("EditVisit", "\316\231\316\261\317\204\317\201\317\214\317\202:", nil, Qt::Application::UnicodeUTF8)
    @label_3.text = Qt::Application.translate("EditVisit", "\316\227\316\274\316\265\317\201\316\277\316\274\316\267\316\275\316\257\316\261:", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(editVisit)
        retranslateUi(editVisit)
    end

end

module Ui
    class EditVisit < Ui_EditVisit
    end
end  # module Ui

