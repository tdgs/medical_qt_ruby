require_relative '../db_models'
require 'haml'

class ReportGenerator
  attr_accessor :exam_set, :engine, :nr_col
  def initialize(exam_set, template_path = 'reports/exam_set.haml', group_template_path = 'reports/exam_group.haml')
    @exam_set = exam_set
    @template = File.read(template_path)
    @group_template = File.read(group_template_path)
    @engine = Haml::Engine.new(@template)
    @group_engine = Haml::Engine.new(@group_template)
    @nr_col = 1
    @alt = false
  end

  def render(file)
    output = @engine.render(self)
    unless file.nil?
			puts "writing to #{file.path}"
      file.write output
    end
    return output
  end

  def render_group(group)
    @group_engine.render(self, {:group => group})
  end

  def cycle(a, b)
    @alt = (not @alt)
    @alt ? a : b
  end

end
