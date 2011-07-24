# encoding: utf-8
require_relative '../qt_models'
require 'Qt4'


class BasicTable < Qt::TableView
  
  slots "edit_item(const QModelIndex&)", "new_item()"
  def initialize(parent = nil, model = nil)
	super(parent)
	setModel(model) if model
	
	sizePolicy = Qt::SizePolicy.new(Qt::SizePolicy::Expanding, Qt::SizePolicy::Expanding)
	self.sortingEnabled = true
	contextMenuPolicy = Qt::ActionsContextMenu
	self.connect(SIGNAL('activated(const QModelIndex&)'), self, :edit_item)
  end
  
  def edit_person(index)
	self.model.newEditWidget(self, index)
  end
  
  def new_item
	self.model.newEditWidget(self, Qt::ModelIndex.new)
  end
  
  def sizeHint
	Qt::Size.new(800,600)
  end
end

class PatientTable < BasicTable
end

	


