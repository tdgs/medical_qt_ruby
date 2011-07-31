require_relative '../db_models'
require_relative '../lib/class_factory'
require 'Qt'


class FieldLayout < Qt::GridLayout
  MaxRow = 2
  attr_accessor :max_row, :max_col, :cr_row, :cr_col
  def initialize(parent = nil)
	super(parent)
	@cr_row = 0
	@cr_col = 0
	@max_row = MaxRow
	@formLayout = Qt::FormLayout.new
	addLayout(@formLayout, MaxRow, 0, -1, -1)
  end
  #alias :old_addWidget :addWidget
  def addGroup(widget)
	addWidget(widget, cr_row, cr_col)
	if (@cr_col += 1) >= max_row
	  @cr_col = 0
	  @cr_row += 1
	end
  end
  
  def addField(label, widget)
	@formLayout.addRow(label, widget)
  end
end

class EditExams < Qt::ScrollArea
  def initialize(parent = nil, exam_set)
	super(parent)
	@edit_widgets = Array.new
	
	setupUI(exam_set)
  end
  
  def setupUI(exam_set)
	@exam_set = exam_set
	@layout = Qt::VBoxLayout.new(self)
	
	root = ExamFieldGroup.root
	root.children.each do |group|
	  @layout.addWidget(widget_group(self, group))
	end

	@buttons = Qt::DialogButtonBox.new(self)
	@buttons.standardButtons = Qt::DialogButtonBox::Cancel|Qt::DialogButtonBox::Save
	@layout.addWidget(@buttons)
	
	Qt::Object.connect(@buttons, SIGNAL('accepted()'), self, SLOT('accept()'))
    Qt::Object.connect(@buttons, SIGNAL('rejected()'), self, SLOT('reject()'))
	Qt::MetaObject.connectSlotsByName(self)
	
  end
  
  def widget_group(parent, exam_group)
	groupBox = Qt::GroupBox.new(parent)
	groupBox.title = exam_group.name
	fieldLayout = FieldLayout.new(groupBox)
	exam_group.children.each do |group|	  
	  fieldLayout.addGroup(widget_group(groupBox, group))
	end
	add_fields(groupBox, fieldLayout, exam_group)
	return groupBox
  end
  
  def add_fields(parent, fieldLayout, exam_group)
	puts  exam_group.inspect
	exam_group.exam_fields.each do |field|
	  w = get_widget(field, parent)
	  fieldLayout.addField(field.name, w)
	end
  end
  
  def get_widget(field, parent)
	w = field.ui_widget(parent)
	exam_value = field.value(@exam_set)
	w.text = exam_value.value
	@edit_widgets  << [w, exam_value]
	return w
  end
  
  def accept
	ret = true
	@edit_widgets.each do |w|
	  if w[0].modified
		w[1].value = w[0].text
		w[0].text
		w[1].save
	  end
	end
	emit emit done(Qt::Dialog::Accepted)
  end
end
