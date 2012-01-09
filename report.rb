Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8
require 'rubygems'
require 'serenity'
require_relative 'db_models'
class Showcase
  include Serenity::Generator

  def initialize(exam_set)
    @e = exam_set
    @patient = exam_set.patient
  end

  def generate_showcase
    render_odt '1-2.odt'
  end
end

Showcase.new(ExamSet.first).generate_showcase
