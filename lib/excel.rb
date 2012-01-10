# encoding: utf-8
require 'Qt4'
module ExcelExporter
  def self.included(base)
    base.class_eval  do
      slots "excel_export_dialog(bool)"
			attr_accessor :excel_dialog_klass
    end
  end

  def enable_excel_action(attrs = {})
    action_name = attrs[:action_name] || 'Εξαγωγη των στοιχειων του πινακα σε Excel'
		@excel_dialog_klass = attrs[:dialog_klass] || ExcelExport
    icon = attrs[:icon] || ":/images/excel-icon.jpg"
    @excelAction = Qt::Action.new(action_name, self)
    excelIcon = Qt::Icon.new
    excelIcon.addPixmap(Qt::Pixmap.new(icon), Qt::Icon::Normal, Qt::Icon::Off)
    @excelAction.icon = excelIcon
    @excelAction.enabled = true
    Qt::Object.connect(@excelAction, SIGNAL('triggered(bool)'), self, SLOT('excel_export_dialog(bool)'))
  end

  def excel_export_dialog(checked)
    excelExport = excel_dialog_klass.new(self)
    excelExport.setup_ui(self)
    excelExport.exec
  end

  def excel_export(filename, *options)
    Spreadsheet.client_encoding = 'UTF-8'
    book = Spreadsheet::Workbook.new
    write_excel(book, *options) 
    book.write(filename)
    Launchy.open(filename)
    return nil
  end

  def write_excel(book, *options)
    raise "must be implemented!"
  end

end
