=begin
** Form generated from reading ui file 'main_window.ui'
**
** Created: Sun Oct 9 21:28:39 2011
**      by: Qt User Interface Compiler version 4.7.2
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_MainWindow
    attr_reader :new_patient
    attr_reader :action
    attr_reader :new_doctor
    attr_reader :statistics
    attr_reader :centralwidget
    attr_reader :gridLayout_2
    attr_reader :statusbar
    attr_reader :toolBar

    def setupUi(mainWindow)
    if mainWindow.objectName.nil?
        mainWindow.objectName = "mainWindow"
    end
    mainWindow.resize(590, 617)
    mainWindow.dockOptions = Qt::MainWindow::AllowNestedDocks|Qt::MainWindow::AllowTabbedDocks|Qt::MainWindow::AnimatedDocks|Qt::MainWindow::ForceTabbedDocks
    @new_patient = Qt::Action.new(mainWindow)
    @new_patient.objectName = "new_patient"
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/images/PatientMale.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @new_patient.icon = icon
    @action = Qt::Action.new(mainWindow)
    @action.objectName = "action"
    icon1 = Qt::Icon.new
    icon1.addPixmap(Qt::Pixmap.new(":/images/Search.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @action.icon = icon1
    @new_doctor = Qt::Action.new(mainWindow)
    @new_doctor.objectName = "new_doctor"
    icon2 = Qt::Icon.new
    icon2.addPixmap(Qt::Pixmap.new(":/images/DoctorMale.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @new_doctor.icon = icon2
    @statistics = Qt::Action.new(mainWindow)
    @statistics.objectName = "statistics"
    @statistics.visible = false
    @centralwidget = Qt::Widget.new(mainWindow)
    @centralwidget.objectName = "centralwidget"
    @gridLayout_2 = Qt::GridLayout.new(@centralwidget)
    @gridLayout_2.objectName = "gridLayout_2"
    mainWindow.centralWidget = @centralwidget
    @statusbar = Qt::StatusBar.new(mainWindow)
    @statusbar.objectName = "statusbar"
    mainWindow.statusBar = @statusbar
    @toolBar = Qt::ToolBar.new(mainWindow)
    @toolBar.objectName = "toolBar"
    @toolBar.movable = false
    @toolBar.toolButtonStyle = Qt::ToolButtonTextUnderIcon
    mainWindow.addToolBar(Qt::TopToolBarArea, @toolBar)

    @toolBar.addAction(@new_patient)
    @toolBar.addAction(@new_doctor)
    @toolBar.addAction(@action)
    @toolBar.addAction(@statistics)

    retranslateUi(mainWindow)
    Qt::Object.connect(@new_doctor, SIGNAL('triggered()'), mainWindow, SLOT('new_doctor()'))
    Qt::Object.connect(@new_patient, SIGNAL('triggered()'), mainWindow, SLOT('new_patient()'))
    Qt::Object.connect(@action, SIGNAL('triggered()'), mainWindow, SLOT('search()'))

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
    @toolBar.windowTitle = Qt::Application.translate("MainWindow", "toolBar", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(mainWindow)
        retranslateUi(mainWindow)
    end

end

module Ui
    class MainWindow < Ui_MainWindow
    end
end  # module Ui

