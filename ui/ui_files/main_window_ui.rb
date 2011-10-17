=begin
** Form generated from reading ui file 'main_window.ui'
**
** Created: Mon Oct 17 18:17:12 2011
**      by: Qt User Interface Compiler version 4.7.2
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
    attr_reader :centralwidget
    attr_reader :gridLayout_2
    attr_reader :statusbar
    attr_reader :mainToolBar
    attr_reader :childToolbar

    def setupUi(mainWindow)
    if mainWindow.objectName.nil?
        mainWindow.objectName = "mainWindow"
    end
    mainWindow.resize(1092, 617)
    mainWindow.dockOptions = Qt::MainWindow::AllowNestedDocks|Qt::MainWindow::AllowTabbedDocks|Qt::MainWindow::AnimatedDocks|Qt::MainWindow::ForceTabbedDocks
    @new_patient = Qt::Action.new(mainWindow)
    @new_patient.objectName = "new_patient"
    @new_patient.checkable = true
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/images/PatientMale.png"), Qt::Icon::Normal, Qt::Icon::Off)
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
    icon2.addPixmap(Qt::Pixmap.new(":/images/DoctorMale.png"), Qt::Icon::Normal, Qt::Icon::Off)
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
    @doctor_main = Qt::Action.new(mainWindow)
    @doctor_main.objectName = "doctor_main"
    @doctor_main.checkable = true
    @exams_main = Qt::Action.new(mainWindow)
    @exams_main.objectName = "exams_main"
    @exams_main.checkable = true
    @new_visit = Qt::Action.new(mainWindow)
    @new_visit.objectName = "new_visit"
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

    @mainToolBar.addAction(@patient_main)
    @mainToolBar.addAction(@doctor_main)
    @mainToolBar.addAction(@exams_main)
    @mainToolBar.addSeparator()
    @mainToolBar.addAction(@new_patient)
    @mainToolBar.addAction(@new_doctor)
    @mainToolBar.addAction(@new_visit)
    @mainToolBar.addSeparator()
    @mainToolBar.addAction(@statistics)
    @mainToolBar.addAction(@actionBackup)
    @mainToolBar.addAction(@actionRestoreBackup)
    @mainToolBar.addSeparator()

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
    mainWindow.windowTitle = Qt::Application.translate("MainWindow", "MainWindow", nil, Qt::Application::UnicodeUTF8)
    @new_patient.text = Qt::Application.translate("MainWindow", "\316\235\316\255\316\277\317\202 \316\221\317\203\316\270\316\265\316\275\316\256\317\202", nil, Qt::Application::UnicodeUTF8)
    @action.text = Qt::Application.translate("MainWindow", "\316\225\317\200\316\271\316\273\316\277\316\263\316\255\317\202 \316\221\316\275\316\261\316\266\316\256\317\204\316\267\317\203\316\267\317\202", nil, Qt::Application::UnicodeUTF8)
    @action.toolTip = Qt::Application.translate("MainWindow", "\316\225\317\200\316\271\316\273\316\277\316\263\316\255\317\202 \316\221\316\275\316\261\316\266\316\256\317\204\316\267\317\203\316\267\317\202", nil, Qt::Application::UnicodeUTF8)
    @new_doctor.text = Qt::Application.translate("MainWindow", "\316\235\316\255\316\277\317\202 \316\231\316\261\317\204\317\201\317\214\317\202", nil, Qt::Application::UnicodeUTF8)
    @statistics.text = Qt::Application.translate("MainWindow", "\316\243\317\204\316\261\317\204\316\271\317\203\317\204\316\271\316\272\316\254", nil, Qt::Application::UnicodeUTF8)
    @actionBackup.text = Qt::Application.translate("MainWindow", "Backup", nil, Qt::Application::UnicodeUTF8)
    @actionBackup.toolTip = Qt::Application.translate("MainWindow", "\316\224\316\267\316\274\316\271\316\277\317\205\317\201\316\263\316\257\316\261 \316\221\316\275\317\204\316\271\316\263\317\201\316\254\317\206\316\277\317\205 \316\221\317\203\317\206\316\261\316\273\316\265\316\257\316\261\317\202", nil, Qt::Application::UnicodeUTF8)
    @actionRestoreBackup.text = Qt::Application.translate("MainWindow", "\316\225\317\200\316\261\316\275\316\261\317\206\316\277\317\201\316\254", nil, Qt::Application::UnicodeUTF8)
    @patient_main.text = Qt::Application.translate("MainWindow", "\316\221\317\203\316\270\316\265\316\275\316\265\316\257\317\202", nil, Qt::Application::UnicodeUTF8)
    @doctor_main.text = Qt::Application.translate("MainWindow", "\316\231\316\261\317\204\317\201\316\277\316\257", nil, Qt::Application::UnicodeUTF8)
    @exams_main.text = Qt::Application.translate("MainWindow", "\316\225\317\200\316\271\317\203\316\272\316\255\317\210\316\265\316\271\317\202", nil, Qt::Application::UnicodeUTF8)
    @new_visit.text = Qt::Application.translate("MainWindow", "\316\235\316\255\316\261 \316\225\317\200\316\257\317\203\316\272\316\265\317\210\316\267", nil, Qt::Application::UnicodeUTF8)
    @mainToolBar.windowTitle = Qt::Application.translate("MainWindow", "toolBar", nil, Qt::Application::UnicodeUTF8)
    @childToolbar.windowTitle = Qt::Application.translate("MainWindow", "toolBar_2", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(mainWindow)
        retranslateUi(mainWindow)
    end

end

module Ui
    class MainWindow < Ui_MainWindow
    end
end  # module Ui

