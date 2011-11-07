# encoding: utf-8
require 'Qt4'
module ExcelExporter
  def self.included(base)
    base.class_eval  do
      slots "excel_export_dialog(bool)"
    end
  end

  def enable_excel_action
    @excelAction = Qt::Action.new('Εξαγωγή σε Excel των στοιχείων του πίνακα', self)
    excelIcon = Qt::Icon.new
    excelIcon.addPixmap(Qt::Pixmap.new(":/images/excel-icon.jpg"), Qt::Icon::Normal, Qt::Icon::Off)
    @excelAction.icon = excelIcon
    @excelAction.enabled = true
    Qt::Object.connect(@excelAction, SIGNAL('triggered(bool)'), self, SLOT('excel_export_dialog(bool)'))
  end

  def excel_export_dialog(checked, dialogKlass = ExcelExport)
    excelExport = dialogKlass.new(self)
    excelExport.setup_ui(self)
    excelExport.exec
  end




  def excel_export(filename, selection)
    Spreadsheet.client_encoding = 'UTF-8'
    book = Spreadsheet::Workbook.new
    items = selection ? self.selected_items : self.all_items
    if items.nil? or items.empty?
      return 'Δεν επιλέχθηκε κανένα στοιχείο!'
    end

    write_excel(book, items) 


    book.write filename
    Launchy.open(filename)
    return nil
  end





end
