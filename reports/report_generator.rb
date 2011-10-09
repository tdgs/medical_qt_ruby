require_relative '../db_models'
require 'haml'

class ReportGenerator
  attr_accessor :exam_set, :engine, :nr_col
  def initialize(exam_set, template_path, group_template_path)
    @exam_set = exam_set
    @template = File.read(template_path)
    @group_template = File.read(group_template_path)
    @engine = Haml::Engine.new(@template)
    @group_engine = Haml::Engine.new(@group_template)
    @nr_col = 1
    @alt = false
  end

  def render(filename)
    File.open(filename, "w") do |f|
      f.write @engine.render(self)
    end
  end

  def render_group(group)
    @group_engine.render(self, {:group => group})
  end

  def cycle(a, b)
    @alt = (not @alt)
    @alt ? a : b
  end

end
