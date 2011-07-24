=begin
** Form generated from reading ui file 'mainWindow.ui'
**
** Created: Sun Jul 24 21:08:24 2011
**      by: Qt User Interface Compiler version 4.7.2
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_MainWindow
    attr_reader :new_patient
    attr_reader :centralwidget
    attr_reader :menubar
    attr_reader :menu
    attr_reader :statusbar
    attr_reader :toolBar
    attr_reader :dockWidget
    attr_reader :dockWidgetContents
    attr_reader :gridLayout
    attr_reader :patientTable

    def setupUi(mainWindow)
    if mainWindow.objectName.nil?
        mainWindow.objectName = "mainWindow"
    end
    mainWindow.resize(800, 600)
    @new_patient = Qt::Action.new(mainWindow)
    @new_patient.objectName = "new_patient"
    @centralwidget = Qt::Widget.new(mainWindow)
    @centralwidget.objectName = "centralwidget"
    mainWindow.centralWidget = @centralwidget
    @menubar = Qt::MenuBar.new(mainWindow)
    @menubar.objectName = "menubar"
    @menubar.geometry = Qt::Rect.new(0, 0, 800, 22)
    @menu = Qt::Menu.new(@menubar)
    @menu.objectName = "menu"
    mainWindow.setMenuBar(@menubar)
    @statusbar = Qt::StatusBar.new(mainWindow)
    @statusbar.objectName = "statusbar"
    mainWindow.statusBar = @statusbar
    @toolBar = Qt::ToolBar.new(mainWindow)
    @toolBar.objectName = "toolBar"
    mainWindow.addToolBar(Qt::TopToolBarArea, @toolBar)
    @dockWidget = Qt::DockWidget.new(mainWindow)
    @dockWidget.objectName = "dockWidget"
    @dockWidgetContents = Qt::Widget.new(@dockWidget)
    @dockWidgetContents.objectName = "dockWidgetContents"
    @gridLayout = Qt::GridLayout.new(@dockWidgetContents)
    @gridLayout.objectName = "gridLayout"
    @gridLayout.setContentsMargins(0, 0, 0, 0)
    @patientTable = PatientTable.new(@dockWidgetContents)
    @patientTable.objectName = "patientTable"

    @gridLayout.addWidget(@patientTable, 0, 0, 1, 1)

    @dockWidget.setWidget(@dockWidgetContents)
    mainWindow.addDockWidget((1), @dockWidget)

    @menubar.addAction(@menu.menuAction())
    @menu.addAction(@new_patient)
    @toolBar.addAction(@new_patient)

    retranslateUi(mainWindow)

    Qt::MetaObject.connectSlotsByName(mainWindow)
    end # setupUi

    def setup_ui(mainWindow)
        setupUi(mainWindow)
    end

    def retranslateUi(mainWindow)
    mainWindow.windowTitle = Qt::Application.translate("MainWindow", "MainWindow", nil, Qt::Application::UnicodeUTF8)
    @new_patient.text = Qt::Application.translate("MainWindow", "\316\235\316\255\316\277\317\202 \316\221\317\203\316\270\316\265\316\275\316\256\317\202", nil, Qt::Application::UnicodeUTF8)
    @menu.title = Qt::Application.translate("MainWindow", "\316\231\316\261\317\204\317\201\316\277\316\257", nil, Qt::Application::UnicodeUTF8)
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

