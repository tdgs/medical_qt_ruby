# encoding: utf-8
require_relative 'ui_files/excel_export_ui'

class ExcelExport < Qt::Dialog
  slots :showFileDialog
  def initialize(parent = nil)
    super(parent)
  end
  
  def setup_ui(tableview)
    @tableview = tableview
    @ui = Ui::ExcelExport.new(self)
    @ui.setup_ui(self)
    filename = "#{Dir.home}/export.xls"
    @ui.fileNameEdit.text = filename
  end

  def showFileDialog
    filename = Qt::FileDialog.getSaveFileName(self, "Επιλογή Αρχείου", @ui.fileNameEdit.text)
    @ui.fileNameEdit.text = filename
  end

  def accept
    error = @tableview.excel_export(@ui.fileNameEdit.text, selection)
    if error.nil?
      Qt::MessageBox.information(self, "Εξαγωγή σε Excel", "Η Εξαγωγή Ολοκληρώθηκε με επιτυχία!")
      super
    else
      Qt::MessageBox.critical(self, "Παρουσιάστηκε κάποιο πρόβλημα με την εξαγωγή των στοιχείων", error)
      reject
    end
  end

  def selection
    @ui.selectionOnly.checked
  end

end
