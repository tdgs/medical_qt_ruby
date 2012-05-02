# encoding: utf-8
=begin
** Form generated from reading ui file 'main_window.ui'
**
** Created: Wed May 2 18:52:54 2012
**      by: Qt User Interface Compiler version 4.8.1
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_MainWindow
    attr_reader :new_patient
    attr_reader :action
    attr_reader :new_doctor
    attr_reader :statistics
    attr_reader :actionBackup
    attr_reader :actionRestoreBackup
    attr_reader :patient_main
    attr_reader :doctor_main
    attr_reader :exams_main
    attr_reader :new_visit
    attr_reader :actionAbout
    attr_reader :centralwidget
    attr_reader :gridLayout_2
    attr_reader :statusbar
    attr_reader :mainToolBar
    attr_reader :childToolbar
    attr_reader :menuBar
    attr_reader :menu
    attr_reader :menu_2
    attr_reader :menu_3
    attr_reader :menuBackup
    attr_reader :menu_4

    def setupUi(mainWindow)
    if mainWindow.objectName.nil?
        mainWindow.objectName = "mainWindow"
    end
    mainWindow.resize(1205, 813)
    mainWindow.dockOptions = Qt::MainWindow::AllowNestedDocks|Qt::MainWindow::AllowTabbedDocks|Qt::MainWindow::AnimatedDocks|Qt::MainWindow::ForceTabbedDocks
    @new_patient = Qt::Action.new(mainWindow)
    @new_patient.objectName = "new_patient"
    @new_patient.checkable = true
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/images/list-add-user.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @new_patient.icon = icon
    @action = Qt::Action.new(mainWindow)
    @action.objectName = "action"
    @action.checkable = true
    icon1 = Qt::Icon.new
    icon1.addPixmap(Qt::Pixmap.new(":/images/Search.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @action.icon = icon1
    @new_doctor = Qt::Action.new(mainWindow)
    @new_doctor.objectName = "new_doctor"
    @new_doctor.checkable = true
    icon2 = Qt::Icon.new
    icon2.addPixmap(Qt::Pixmap.new(":/images/list-resource-add.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @new_doctor.icon = icon2
    @statistics = Qt::Action.new(mainWindow)
    @statistics.objectName = "statistics"
    @statistics.checkable = true
    @statistics.visible = false
    @actionBackup = Qt::Action.new(mainWindow)
    @actionBackup.objectName = "actionBackup"
    @actionBackup.checkable = true
    icon3 = Qt::Icon.new
    icon3.addPixmap(Qt::Pixmap.new(":/images/Export.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @actionBackup.icon = icon3
    @actionRestoreBackup = Qt::Action.new(mainWindow)
    @actionRestoreBackup.objectName = "actionRestoreBackup"
    @actionRestoreBackup.checkable = true
    icon4 = Qt::Icon.new
    icon4.addPixmap(Qt::Pixmap.new(":/images/import.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @actionRestoreBackup.icon = icon4
    @patient_main = Qt::Action.new(mainWindow)
    @patient_main.objectName = "patient_main"
    @patient_main.checkable = true
    icon5 = Qt::Icon.new
    icon5.addPixmap(Qt::Pixmap.new(":/images/user-identity.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @patient_main.icon = icon5
    @doctor_main = Qt::Action.new(mainWindow)
    @doctor_main.objectName = "doctor_main"
    @doctor_main.checkable = true
    icon6 = Qt::Icon.new
    icon6.addPixmap(Qt::Pixmap.new(":/images/meeting-participant.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @doctor_main.icon = icon6
    @exams_main = Qt::Action.new(mainWindow)
    @exams_main.objectName = "exams_main"
    @exams_main.checkable = true
    icon7 = Qt::Icon.new
    icon7.addPixmap(Qt::Pixmap.new(":/images/view-calendar-day.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @exams_main.icon = icon7
    @new_visit = Qt::Action.new(mainWindow)
    @new_visit.objectName = "new_visit"
    icon8 = Qt::Icon.new
    icon8.addPixmap(Qt::Pixmap.new(":/images/appointment-new.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @new_visit.icon = icon8
    @actionAbout = Qt::Action.new(mainWindow)
    @actionAbout.objectName = "actionAbout"
    icon9 = Qt::Icon.new
    icon9.addPixmap(Qt::Pixmap.new(":/images/medical-symbol.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @actionAbout.icon = icon9
    @centralwidget = Qt::Widget.new(mainWindow)
    @centralwidget.objectName = "centralwidget"
    @gridLayout_2 = Qt::GridLayout.new(@centralwidget)
    @gridLayout_2.objectName = "gridLayout_2"
    mainWindow.centralWidget = @centralwidget
    @statusbar = Qt::StatusBar.new(mainWindow)
    @statusbar.objectName = "statusbar"
    mainWindow.statusBar = @statusbar
    @mainToolBar = Qt::ToolBar.new(mainWindow)
    @mainToolBar.objectName = "mainToolBar"
    @mainToolBar.movable = false
    @mainToolBar.toolButtonStyle = Qt::ToolButtonTextUnderIcon
    mainWindow.addToolBar(Qt::TopToolBarArea, @mainToolBar)
    @childToolbar = Qt::ToolBar.new(mainWindow)
    @childToolbar.objectName = "childToolbar"
    @childToolbar.toolButtonStyle = Qt::ToolButtonTextUnderIcon
    mainWindow.addToolBar(Qt::TopToolBarArea, @childToolbar)
    mainWindow.insertToolBarBreak(@childToolbar)
    @menuBar = Qt::MenuBar.new(mainWindow)
    @menuBar.objectName = "menuBar"
    @menuBar.geometry = Qt::Rect.new(0, 0, 1205, 21)
    @menu = Qt::Menu.new(@menuBar)
    @menu.objectName = "menu"
    @menu_2 = Qt::Menu.new(@menuBar)
    @menu_2.objectName = "menu_2"
    @menu_3 = Qt::Menu.new(@menuBar)
    @menu_3.objectName = "menu_3"
    @menuBackup = Qt::Menu.new(@menuBar)
    @menuBackup.objectName = "menuBackup"
    @menu_4 = Qt::Menu.new(@menuBar)
    @menu_4.objectName = "menu_4"
    mainWindow.setMenuBar(@menuBar)

    @mainToolBar.addAction(@patient_main)
    @mainToolBar.addAction(@doctor_main)
    @mainToolBar.addAction(@exams_main)
    @mainToolBar.addAction(@statistics)
    @mainToolBar.addSeparator()
    @mainToolBar.addAction(@new_patient)
    @mainToolBar.addAction(@new_doctor)
    @mainToolBar.addSeparator()
    @mainToolBar.addAction(@actionBackup)
    @mainToolBar.addAction(@actionRestoreBackup)
    @mainToolBar.addSeparator()
    @mainToolBar.addAction(@actionAbout)
    @menuBar.addAction(@menu.menuAction())
    @menuBar.addAction(@menu_2.menuAction())
    @menuBar.addAction(@menu_3.menuAction())
    @menuBar.addAction(@menuBackup.menuAction())
    @menuBar.addAction(@menu_4.menuAction())
    @menu.addAction(@patient_main)
    @menu.addAction(@new_patient)
    @menu_2.addAction(@doctor_main)
    @menu_2.addAction(@new_doctor)
    @menu_3.addAction(@exams_main)
    @menu_3.addAction(@new_visit)
    @menuBackup.addAction(@actionBackup)
    @menuBackup.addAction(@actionRestoreBackup)

    retranslateUi(mainWindow)
    Qt::Object.connect(@new_doctor, SIGNAL('triggered()'), mainWindow, SLOT('new_doctor()'))
    Qt::Object.connect(@new_patient, SIGNAL('triggered()'), mainWindow, SLOT('new_patient()'))
    Qt::Object.connect(@actionBackup, SIGNAL('triggered()'), mainWindow, SLOT('backup_action()'))
    Qt::Object.connect(@actionRestoreBackup, SIGNAL('triggered()'), mainWindow, SLOT('restore_action()'))
    Qt::Object.connect(@mainToolBar, SIGNAL('actionTriggered(QAction*)'), mainWindow, SLOT('action_triggered(QAction*)'))
    Qt::Object.connect(@patient_main, SIGNAL('triggered()'), mainWindow, SLOT('main_patient_screen()'))
    Qt::Object.connect(@doctor_main, SIGNAL('triggered()'), mainWindow, SLOT('main_doctor_screen()'))
    Qt::Object.connect(@exams_main, SIGNAL('triggered()'), mainWindow, SLOT('main_exams_screen()'))

    Qt::MetaObject.connectSlotsByName(mainWindow)
    end # setupUi

    def setup_ui(mainWindow)
        setupUi(mainWindow)
    end

    def retranslateUi(mainWindow)
    mainWindow.windowTitle = my_translate("MainWindow", nil)
    mainWindow.accessibleName = ''
    @new_patient.text = my_translate("\316\235\316\255\316\277\317\202 \316\221\317\203\316\270\316\265\316\275\316\256\317\202", nil)
    @action.text = my_translate("\316\225\317\200\316\271\316\273\316\277\316\263\316\255\317\202 \316\221\316\275\316\261\316\266\316\256\317\204\316\267\317\203\316\267\317\202", nil)
    @action.toolTip = my_translate("\316\225\317\200\316\271\316\273\316\277\316\263\316\255\317\202 \316\221\316\275\316\261\316\266\316\256\317\204\316\267\317\203\316\267\317\202", nil)
    @new_doctor.text = my_translate("\316\235\316\255\316\277\317\202 \316\231\316\261\317\204\317\201\317\214\317\202", nil)
    @statistics.text = my_translate("\316\243\317\204\316\261\317\204\316\271\317\203\317\204\316\271\316\272\316\254", nil)
    @actionBackup.text = my_translate("Backup", nil)
    @actionBackup.toolTip = my_translate("\316\224\316\267\316\274\316\271\316\277\317\205\317\201\316\263\316\257\316\261 \316\221\316\275\317\204\316\271\316\263\317\201\316\254\317\206\316\277\317\205 \316\221\317\203\317\206\316\261\316\273\316\265\316\257\316\261\317\202", nil)
    @actionRestoreBackup.text = my_translate("\316\225\317\200\316\261\316\275\316\261\317\206\316\277\317\201\316\254", nil)
    @patient_main.text = my_translate("\316\221\317\203\316\270\316\265\316\275\316\265\316\257\317\202", nil)
    @doctor_main.text = my_translate("\316\231\316\261\317\204\317\201\316\277\316\257", nil)
    @exams_main.text = my_translate("\316\225\317\200\316\271\317\203\316\272\316\255\317\210\316\265\316\271\317\202", nil)
    @new_visit.text = my_translate("\316\235\316\255\316\261 \316\225\317\200\316\257\317\203\316\272\316\265\317\210\316\267", nil)
    @actionAbout.text = my_translate("\316\240\316\273\316\267\317\201\316\277\317\206\316\277\317\201\316\257\316\265\317\202 \316\240\317\201\316\277\316\263\317\201\316\254\316\274\316\274\316\261\317\204\316\277\317\202...", nil)
    @mainToolBar.windowTitle = my_translate("toolBar", nil)
    @childToolbar.windowTitle = my_translate("toolBar_2", nil)
    @menu.title = my_translate("\316\221\317\203\316\270\316\265\316\275\316\265\316\257\317\202", nil)
    @menu_2.title = my_translate("\316\231\316\261\317\204\317\201\316\277\316\257", nil)
    @menu_3.title = my_translate("\316\225\317\200\316\271\317\203\316\272\316\255\317\210\316\265\316\271\317\202", nil)
    @menuBackup.title = my_translate("Backup", nil)
    @menu_4.title = my_translate("\316\222\316\277\316\256\316\270\316\265\316\271\316\261", nil)
    end # retranslateUi

    def retranslate_ui(mainWindow)
        retranslateUi(mainWindow)
    end

end

module Ui
    class MainWindow < Ui_MainWindow
    end
end  # module Ui

