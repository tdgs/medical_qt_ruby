require_relative 'search_screen'
require_relative 'ui_files/exams_main_ui'

class ExamsMainWidget  < Qt::Frame
  include SearchScreen

  def initialize(parent = nil)
    super(parent)
    @model = ExamSetModel
    @klass = ExamSet
    @resultsTableKlass = ExamSetTable
    @ui = Ui::ExamsFrame.new
    @ask = false
    @ui.setup_ui(self)
    setResultsTable
    show_all
    @optionsHash = SearchOptionHash.new([[ExamSet.patient.surname, @ui.examSetPatient],
                                       [ExamSet.doctor.surname, @ui.examSetDoctor],
                                       [:date, [@ui.examSetFromDate,@ui.examSetToDate], {:validation => :isEnabled}]])

  end

end
