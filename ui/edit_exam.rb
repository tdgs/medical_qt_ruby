require_relative '../db_models'
require_relative '../lib/class_factory'
require 'Qt'

class EditExams < Qt::Dialog
  def initialize(parent = nil)
	super(parent)
	@edit_widgets = Array.new
  end
  
  def setupUI(exam_set)
	@exam_set = exam_set
	@layout = Qt::VBoxLayout.new(self)
	
	scrollArea = Qt::ScrollArea.new(self)
	@fieldlayout = Qt::VBoxLayout.new
	widget = Qt::Widget.new
	root = ExamFieldGroup.root
	root.children.each do |group|
	  @fieldlayout.addWidget(widget_group(widget, group))
	end
	widget.setLayout(@fieldlayout)
	scrollArea.widget = widget
	@layout.addWidget(scrollArea)
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
	layout = Qt::FormLayout.new(groupBox)
	layout.rowWrapPolicy = Qt::FormLayout::WrapAllRows
	add_fields(groupBox, layout, exam_group)
	exam_group.children.each do |group|	  
	  layout.addRow(widget_group(groupBox, group))
	end
	return groupBox
  end
  
  def add_fields(parent, formLayout, exam_group)
	puts  exam_group.inspect
	exam_group.exam_fields.each do |field|
	  exam_value = field.value(@exam_set)
	  w = get_widget(field.widget, exam_value, parent)
	  formLayout.addRow(field.name, w)
	end
  end
  
  def get_widget(name, exam_value, parent)
	widget = ClassFactory.str_to_klass(name).new(parent)
	widget.text = exam_value.value
	@edit_widgets  << [widget, exam_value]
	return widget
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
