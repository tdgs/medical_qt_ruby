=begin
** Form generated from reading ui file 'restore_backup.ui'
**
** Created: Mon Oct 10 23:30:26 2011
**      by: Qt User Interface Compiler version 4.7.2
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_RestoreBackup
    attr_reader :verticalLayout
    attr_reader :label
    attr_reader :line
    attr_reader :groupBox
    attr_reader :formLayout
    attr_reader :label_6
    attr_reader :nameLabel
    attr_reader :label_2
    attr_reader :dateLabel
    attr_reader :label_3
    attr_reader :patientLabel
    attr_reader :label_4
    attr_reader :doctorLabel
    attr_reader :label_5
    attr_reader :examLabel
    attr_reader :line_2
    attr_reader :label_7
    attr_reader :label_8
    attr_reader :buttonBox

    def setupUi(restoreBackup)
    if restoreBackup.objectName.nil?
        restoreBackup.objectName = "restoreBackup"
    end
    restoreBackup.resize(443, 323)
    @verticalLayout = Qt::VBoxLayout.new(restoreBackup)
    @verticalLayout.objectName = "verticalLayout"
    @label = Qt::Label.new(restoreBackup)
    @label.objectName = "label"
    @sizePolicy = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Maximum)
    @sizePolicy.setHorizontalStretch(0)
    @sizePolicy.setVerticalStretch(0)
    @sizePolicy.heightForWidth = @label.sizePolicy.hasHeightForWidth
    @label.sizePolicy = @sizePolicy
    @label.textFormat = Qt::RichText

    @verticalLayout.addWidget(@label)

    @line = Qt::Frame.new(restoreBackup)
    @line.objectName = "line"
    @line.setFrameShape(Qt::Frame::HLine)
    @line.setFrameShadow(Qt::Frame::Sunken)

    @verticalLayout.addWidget(@line)

    @groupBox = Qt::GroupBox.new(restoreBackup)
    @groupBox.objectName = "groupBox"
    @sizePolicy1 = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Minimum)
    @sizePolicy1.setHorizontalStretch(0)
    @sizePolicy1.setVerticalStretch(0)
    @sizePolicy1.heightForWidth = @groupBox.sizePolicy.hasHeightForWidth
    @groupBox.sizePolicy = @sizePolicy1
    @formLayout = Qt::FormLayout.new(@groupBox)
    @formLayout.objectName = "formLayout"
    @label_6 = Qt::Label.new(@groupBox)
    @label_6.objectName = "label_6"

    @formLayout.setWidget(0, Qt::FormLayout::LabelRole, @label_6)

    @nameLabel = Qt::Label.new(@groupBox)
    @nameLabel.objectName = "nameLabel"
    @font = Qt::Font.new
    @font.pointSize = 11
    @font.bold = true
    @font.weight = 75
    @nameLabel.font = @font

    @formLayout.setWidget(0, Qt::FormLayout::FieldRole, @nameLabel)

    @label_2 = Qt::Label.new(@groupBox)
    @label_2.objectName = "label_2"

    @formLayout.setWidget(1, Qt::FormLayout::LabelRole, @label_2)

    @dateLabel = Qt::Label.new(@groupBox)
    @dateLabel.objectName = "dateLabel"
    @dateLabel.font = @font

    @formLayout.setWidget(1, Qt::FormLayout::FieldRole, @dateLabel)

    @label_3 = Qt::Label.new(@groupBox)
    @label_3.objectName = "label_3"

    @formLayout.setWidget(2, Qt::FormLayout::LabelRole, @label_3)

    @patientLabel = Qt::Label.new(@groupBox)
    @patientLabel.objectName = "patientLabel"
    @patientLabel.font = @font

    @formLayout.setWidget(2, Qt::FormLayout::FieldRole, @patientLabel)

    @label_4 = Qt::Label.new(@groupBox)
    @label_4.objectName = "label_4"

    @formLayout.setWidget(3, Qt::FormLayout::LabelRole, @label_4)

    @doctorLabel = Qt::Label.new(@groupBox)
    @doctorLabel.objectName = "doctorLabel"
    @doctorLabel.font = @font

    @formLayout.setWidget(3, Qt::FormLayout::FieldRole, @doctorLabel)

    @label_5 = Qt::Label.new(@groupBox)
    @label_5.objectName = "label_5"

    @formLayout.setWidget(4, Qt::FormLayout::LabelRole, @label_5)

    @examLabel = Qt::Label.new(@groupBox)
    @examLabel.objectName = "examLabel"
    @examLabel.font = @font

    @formLayout.setWidget(4, Qt::FormLayout::FieldRole, @examLabel)


    @verticalLayout.addWidget(@groupBox)

    @line_2 = Qt::Frame.new(restoreBackup)
    @line_2.objectName = "line_2"
    @line_2.setFrameShape(Qt::Frame::HLine)
    @line_2.setFrameShadow(Qt::Frame::Sunken)

    @verticalLayout.addWidget(@line_2)

    @label_7 = Qt::Label.new(restoreBackup)
    @label_7.objectName = "label_7"
    @label_7.wordWrap = true

    @verticalLayout.addWidget(@label_7)

    @label_8 = Qt::Label.new(restoreBackup)
    @label_8.objectName = "label_8"

    @verticalLayout.addWidget(@label_8)

    @buttonBox = Qt::DialogButtonBox.new(restoreBackup)
    @buttonBox.objectName = "buttonBox"
    @buttonBox.orientation = Qt::Horizontal
    @buttonBox.standardButtons = Qt::DialogButtonBox::Cancel|Qt::DialogButtonBox::Ok

    @verticalLayout.addWidget(@buttonBox)


    retranslateUi(restoreBackup)
    Qt::Object.connect(@buttonBox, SIGNAL('accepted()'), restoreBackup, SLOT('accept()'))
    Qt::Object.connect(@buttonBox, SIGNAL('rejected()'), restoreBackup, SLOT('reject()'))

    Qt::MetaObject.connectSlotsByName(restoreBackup)
    end # setupUi

    def setup_ui(restoreBackup)
        setupUi(restoreBackup)
    end

    def retranslateUi(restoreBackup)
    restoreBackup.windowTitle = Qt::Application.translate("RestoreBackup", "Dialog", nil, Qt::Application::UnicodeUTF8)
    @label.text = Qt::Application.translate("RestoreBackup", "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n" \
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n" \
"p, li { white-space: pre-wrap; }\n" \
"</style></head><body style=\" font-family:'Ubuntu'; font-size:9pt; font-weight:400; font-style:normal;\">\n" \
"<p align=\"center\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:12pt; font-weight:600;\">\316\221\317\201\317\207\316\265\316\257\316\277 \316\221\317\203\317\206\316\261\316\273\316\265\316\257\316\261\317\202 (Backup)</span></p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @groupBox.title = Qt::Application.translate("RestoreBackup", "\316\240\316\273\316\267\317\201\316\277\317\206\316\277\317\201\316\257\316\265\317\202", nil, Qt::Application::UnicodeUTF8)
    @label_6.text = Qt::Application.translate("RestoreBackup", "\316\214\316\275\316\277\316\274\316\261 \316\221\317\201\317\207\316\265\316\257\316\277\317\205:", nil, Qt::Application::UnicodeUTF8)
    @nameLabel.text = Qt::Application.translate("RestoreBackup", "TextLabel", nil, Qt::Application::UnicodeUTF8)
    @label_2.text = Qt::Application.translate("RestoreBackup", "\316\227\316\274\316\265\317\201\316\277\316\274\316\267\316\275\316\257\316\261:", nil, Qt::Application::UnicodeUTF8)
    @dateLabel.text = Qt::Application.translate("RestoreBackup", "TextLabel", nil, Qt::Application::UnicodeUTF8)
    @label_3.text = Qt::Application.translate("RestoreBackup", "\316\221\317\201\316\271\316\270\316\274\317\214\317\202 \316\221\317\203\316\270\316\265\316\275\317\216\316\275:", nil, Qt::Application::UnicodeUTF8)
    @patientLabel.text = Qt::Application.translate("RestoreBackup", "TextLabel", nil, Qt::Application::UnicodeUTF8)
    @label_4.text = Qt::Application.translate("RestoreBackup", "\316\221\317\201\316\271\316\270\316\274\317\214\317\202 \316\231\316\261\317\204\317\201\317\216\316\275:", nil, Qt::Application::UnicodeUTF8)
    @doctorLabel.text = Qt::Application.translate("RestoreBackup", "TextLabel", nil, Qt::Application::UnicodeUTF8)
    @label_5.text = Qt::Application.translate("RestoreBackup", "\316\221\317\201\316\271\316\270\316\274\317\214\317\202 \316\225\317\200\316\271\317\203\316\272\316\255\317\210\316\265\317\211\316\275:", nil, Qt::Application::UnicodeUTF8)
    @examLabel.text = Qt::Application.translate("RestoreBackup", "TextLabel", nil, Qt::Application::UnicodeUTF8)
    @label_7.text = Qt::Application.translate("RestoreBackup", "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n" \
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n" \
"p, li { white-space: pre-wrap; }\n" \
"</style></head><body style=\" font-family:'Ubuntu'; font-size:9pt; font-weight:400; font-style:normal;\">\n" \
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:12pt; font-weight:600;\">\316\225\317\200\316\261\316\275\316\261\317\206\316\277\317\201\316\254 \317\204\316\277\317\205 \316\261\317\201\317\207\316\265\316\257\316\277\317\205;</span></p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @label_8.text = Qt::Application.translate("RestoreBackup", "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n" \
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n" \
"p, li { white-space: pre-wrap; }\n" \
"</style></head><body style=\" font-family:'Ubuntu'; font-size:9pt; font-weight:400; font-style:normal;\">\n" \
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:12pt; font-weight:600;\">\316\244\316\261 \317\205\317\200\316\254\317\201\317\207\316\277\316\275\317\204\316\261 \317\203\317\204\316\277\316\271\317\207\316\265\316\257\316\261 \316\270\316\261 \316\264\316\271\316\261\316\263\317\201\316\261\317\206\316\277\317\215\316\275!!!</span></p></body></html>", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(restoreBackup)
        retranslateUi(restoreBackup)
    end

end

module Ui
    class RestoreBackup < Ui_RestoreBackup
    end
end  # module Ui

