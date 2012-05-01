require 'serenity'
require_relative '../db_models'

class ReportGenerator
  include Serenity::Generator

  def initialize(exam_set, template_path = 'reports/template.odt')
    @exam_set = exam_set
    @template = template_path
    @patient = exam_set.patient
  end

  def render(output)
    render_odt @template, output
  end

end
