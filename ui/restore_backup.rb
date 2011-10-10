require_relative 'ui_files/restore_backup_ui'


class RestoreBackupDialog < Qt::Dialog

  def initialize(parent = nil, info)
    super(parent)
    @ui = Ui::RestoreBackup.new
    @ui.setup_ui(self)

    @ui.patientLabel.text = info[:patients]
    @ui.doctorLabel.text = info[:doctors]
    @ui.examLabel.text = info[:exam_sets]
    @ui.dateLabel.text = info[:time].strftime("%d/%m/%Y")
    @ui.nameLabel.text = info[:name]
  end
end
