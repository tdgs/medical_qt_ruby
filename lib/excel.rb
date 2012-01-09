# encoding: utf-8
require 'Qt4'
module ExcelExporter
  def self.included(base)
    base.class_eval  do
      slots "excel_export_dialog(bool)"
    end
  end

  def enable_excel_action(attrs)
    action_name = attrs[:action_name] || 'Εξαγωγη των στοιχειων του πινακα σε Excel'
    icon = attrs[:icon] || ":/images/excel-icon.jpg"
    @excelAction = Qt::Action.new(action_name, self)
    excelIcon = Qt::Icon.new
    excelIcon.addPixmap(icon, Qt::Icon::Normal, Qt::Icon::Off)
    @excelAction.icon = excelIcon
    @excelAction.enabled = true
    Qt::Object.connect(@excelAction, SIGNAL('triggered(bool)'), self, SLOT('excel_export_dialog(bool)'))
  end

  def excel_export_dialog(checked)
    excelExport = dialogKlass.new(self)
    excelExport.setup_ui(self)
    excelExport.exec
  end

  def excel_export(filename)
    Spreadsheet.client_encoding = 'UTF-8'
    book = Spreadsheet::Workbook.new
    write_excel(book) 
    book.write filename
    Launchy.open(filename)
    return nil
  end

  def write_excel(book)
    raise "must be implemented!"
  end

  def dialogKlass
    ExcelExport
  end
end
