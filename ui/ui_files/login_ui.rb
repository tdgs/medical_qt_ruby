# encoding: utf-8
=begin
** Form generated from reading ui file 'login.ui'
**
** Created: Wed Oct 19 13:31:13 2011
**      by: Qt User Interface Compiler version 4.7.4
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_LoginDialog
    attr_reader :verticalLayout
    attr_reader :groupBox
    attr_reader :formLayout
    attr_reader :label_2
    attr_reader :username
    attr_reader :label_3
    attr_reader :password
    attr_reader :buttonBox

    def setupUi(loginDialog)
    if loginDialog.objectName.nil?
        loginDialog.objectName = "loginDialog"
    end
    loginDialog.resize(301, 135)
    @verticalLayout = Qt::VBoxLayout.new(loginDialog)
    @verticalLayout.objectName = "verticalLayout"
    @groupBox = Qt::GroupBox.new(loginDialog)
    @groupBox.objectName = "groupBox"
    @formLayout = Qt::FormLayout.new(@groupBox)
    @formLayout.objectName = "formLayout"
    @label_2 = Qt::Label.new(@groupBox)
    @label_2.objectName = "label_2"

    @formLayout.setWidget(0, Qt::FormLayout::LabelRole, @label_2)

    @username = Qt::LineEdit.new(@groupBox)
    @username.objectName = "username"

    @formLayout.setWidget(0, Qt::FormLayout::FieldRole, @username)

    @label_3 = Qt::Label.new(@groupBox)
    @label_3.objectName = "label_3"

    @formLayout.setWidget(1, Qt::FormLayout::LabelRole, @label_3)

    @password = Qt::LineEdit.new(@groupBox)
    @password.objectName = "password"

    @formLayout.setWidget(1, Qt::FormLayout::FieldRole, @password)


    @verticalLayout.addWidget(@groupBox)

    @buttonBox = Qt::DialogButtonBox.new(loginDialog)
    @buttonBox.objectName = "buttonBox"
    @buttonBox.orientation = Qt::Horizontal
    @buttonBox.standardButtons = Qt::DialogButtonBox::Cancel|Qt::DialogButtonBox::Ok

    @verticalLayout.addWidget(@buttonBox)


    retranslateUi(loginDialog)
    Qt::Object.connect(@buttonBox, SIGNAL('accepted()'), loginDialog, SLOT('accept()'))
    Qt::Object.connect(@buttonBox, SIGNAL('rejected()'), loginDialog, SLOT('reject()'))

    Qt::MetaObject.connectSlotsByName(loginDialog)
    end # setupUi

    def setup_ui(loginDialog)
        setupUi(loginDialog)
    end

    def retranslateUi(loginDialog)
    loginDialog.windowTitle = my_translate("\316\240\317\201\317\214\316\263\317\201\316\261\316\274\316\274\316\261 \316\224\316\271\316\261\317\207\316\265\316\257\317\201\316\271\317\203\316\267\317\202", nil)
    @groupBox.title = my_translate("\316\240\316\271\317\203\317\204\316\277\317\200\316\277\316\257\316\267\317\203\316\267 \316\247\317\201\316\256\317\203\317\204\316\267", nil)
    @label_2.text = my_translate("\316\214\316\275\316\277\316\274\316\261 \316\247\317\201\316\256\317\203\317\204\316\267:", nil)
    @label_3.text = my_translate("\316\232\317\211\316\264\316\271\316\272\317\214\317\202:", nil)
    end # retranslateUi

    def retranslate_ui(loginDialog)
        retranslateUi(loginDialog)
    end

end

module Ui
    class LoginDialog < Ui_LoginDialog
    end
end  # module Ui

