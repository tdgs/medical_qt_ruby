# encoding: utf-8
require_relative '../db_models'
require_relative '../lib/class_factory'
require 'Qt'
require_relative '../lib/db_model_widget'

module FieldManagement
  def get_widget(field)
    w = field.ui_widget(self)
    exam_value = ExamValue.new(:exam_field => field)
    w.text = exam_value.value
    @edit_widgets  << [w, exam_value]
    return w
  end



  def addField(label, widget)
    #widget.minimumHeight = 20
    widget.maximumWidth = 200
    widget.minimumWidth = 150

    @fieldLayout.addRow(format_label(label), widget)
  end

  def format_label(label)
    label << ':' unless label.end_with? ':'
    return label
  end


end

class FieldGroupBox < Qt::GroupBox
  include FieldManagement

  attr_accessor :max_row, :max_col, :cr_row, :cr_col
  def initialize(exam_set, parent = nil)
    super(parent)
    @exam_set = exam_set
    self.setSizePolicy(Qt::SizePolicy::Maximum, Qt::SizePolicy::Minimum) 
  end

  def setup!(fieldGroup,col = 3)
    @max_col = col; @cr_row = 0; @cr_col = 0
    init_layouts
    @edit_widgets = []

    # self.title  =  fieldGroup.name
    fieldGroup.children.each do |group|
      g = FieldGroupBox.new(@exam_set, self)
      addGroup g
      @edit_widgets += g.setup!(group)
    end

    fieldGroup.exam_fields.each do |field|
      w = get_widget(field)
      addField(field.name, w)
    end
    return @edit_widgets
  end

  def addGroup(widget)
    puts "row, col: #{cr_row}, #{cr_col}"
    @childGroupLayout.addWidget(widget, cr_row, cr_col)
    @cr_col += 1
    if @cr_col >= max_col
      @cr_col = 0; @cr_row += 1
    end
  end

  def init_layouts
    @basicLayout = Qt::VBoxLayout.new(self)
    @childGroups = Qt::Frame.new(self)
    @groupFields = Qt::Frame.new(self)

    @basicLayout.addWidget(@childGroups)
    @basicLayout.addWidget(@groupFields)


    @childGroupLayout = Qt::GridLayout.new(@childGroups)
    @childGroupLayout.setRowMinimumHeight(0, 0)
    @fieldLayout = Qt::FormLayout.new(@groupFields)
    #@fieldLayout.rowWrapPolicy = Qt::FormLayout::WrapLongRows
  end
end

class EditExamSet < Qt::TabWidget
  include DataBaseModelWidget
  include FieldManagement
  attr_accessor :exam_set

  def initialize(parent = nil)
    super(parent)
    @attributes = []
  end

  def setupUI(exam_set)
    @exam_set = exam_set
    @edit_widgets = []
    @layout = Qt::VBoxLayout.new(self)

    root = ExamFieldGroup.root

    @fieldScrollArea = Qt::ScrollArea.new(self)
    @fieldLayout = Qt::FormLayout.new(@fieldScrollArea)
    root.exam_fields.each do |field|
      w = get_widget(field)
      addField(field.name, w)
    end
    puts "EDIT WIDGET COUNT: #{@edit_widgets.count}"
    self.addTab(@fieldScrollArea, 'Γενικά')
    root.children.each do |child|
      scrollArea = Qt::ScrollArea.new(self)
      scrollArea.widgetResizable = true
      g = FieldGroupBox.new(@exam_set, scrollArea)
      scrollArea.widget = g
      @edit_widgets += g.setup!(child)
      self.addTab(scrollArea, child.name)
    end


    Qt::MetaObject.connectSlotsByName(self)	
  end

  def load_from_db
    @edit_widgets.each do |w|
      f = w[1].exam_field
      w[1] = ExamValue.first_or_new(:exam_field => f, :exam_set => @item)
      w[0].text = w[1].value
    end
  end

  def save_to_db
    puts 'SAVE_TO_DB'
    @edit_widgets.each do |w|
      w[1].value = w[0].text
      w[1].save
    end
    return true
  end
end
