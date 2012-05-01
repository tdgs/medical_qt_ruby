# encoding: utf-8
require_relative 'ui_files/doctor_export_ui'

class DoctorReportExport < Qt::Dialog

  slots :showFileDialog
  def initialize(parent = nil)
    super(parent)
  end
  
  def setup_ui(form)
    @form = form
    @ui = Ui::DoctorExcelExport.new
    @ui.setup_ui(self)
    filename = "#{Dir.home}/export.xls"
    @ui.fileNameEdit.text = filename
  end

  def showFileDialog
    filename = Qt::FileDialog.getSaveFileName(self, "Επιλογή Αρχείου", @ui.fileNameEdit.text)
    @ui.fileNameEdit.text = filename
  end

  def accept
    error = @form.excel_export(@ui.fileNameEdit.text, excel_options)
    if error.nil?
      Qt::MessageBox.information(self, "Εξαγωγή σε Excel", "Η Εξαγωγή Ολοκληρώθηκε με επιτυχία!")
      super
    else
      Qt::MessageBox.critical(self, "Παρουσιάστηκε κάποιο πρόβλημα με την εξαγωγή των στοιχείων", error)
      reject
    end
  end

  def excel_options
		if @ui.patientRadio.checked
			{:patient => @ui.patientCombo.get_item}
		elsif @ui.dateRadio.checked
			{:date => @ui.dateEdit.date}
		else # @ui.allRadio.checked
			{:all => true}
		end
  end

end
