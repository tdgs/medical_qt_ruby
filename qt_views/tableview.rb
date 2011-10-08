# encoding: utf-8
require_relative '../qt_models'
require 'Qt4'
require_relative '../lib/ruby_variant.rb'

class BasicTable < Qt::TableView
  attr_reader :deleteMessage
  slots "edit_item(const QModelIndex&)", "new_item()", "item_remove(bool)"
  signals "edit_request(QVariant&)"
  def initialize(parent = nil, model = nil)
    super(parent)
    puts "BasicTable: #{ $mainWindow.inspect}"

    setModel(model) if model

    sizePolicy = Qt::SizePolicy.new(Qt::SizePolicy::Expanding, Qt::SizePolicy::Expanding)
    self.sortingEnabled = true
    self.selectionBehavior = Qt::AbstractItemView::SelectRows
    self.selectionMode = Qt::AbstractItemView::ExtendedSelection
    self.alternatingRowColors = true

    @removeAction = Qt::Action.new('Διαγραφή', self)
    self.addAction(@removeAction)



    self.connect(SIGNAL('activated(const QModelIndex&)'), self, :edit_item)
    Qt::Object.connect(@removeAction, SIGNAL('triggered(bool)'), self, SLOT('item_remove(bool)'))
    Qt::Object.connect(self, SIGNAL('edit_request(QVariant&)'), $mainWindow, SLOT('edit_item(QVariant&)'))


  end

  def edit_item(index)
    item = self.model.itemFromIndex(index)
    emit edit_request(item.to_variant)
  end

  def sizeHint
    Qt::Size.new(800,600)
  end

  def contextMenuEvent(event)
    menu = Qt::Menu.new(self)
    menu.addAction(@removeAction) if self.indexAt(event.pos).valid?
    menu.exec(event.globalPos) unless menu.isEmpty
  end

  def item_remove(checked)
    indexes = self.selectionModel.selectedRows(0)
    models = indexes.collect {|idx| self.model.itemFromIndex(idx)}
    question = Qt::MessageBox.new
    question.text = self.deleteMessage
    question.standardButtons = Qt::MessageBox::Ok | Qt::MessageBox::Cancel
    if question.exec 
      box = Qt::MessageBox.new
      if self.model.remove_items models
        box.text = 'Τα στοιχεία Διαγράφησαν'
      else
        box.text = 'Υπήρξε ένα πρόβλημα με τη διαγραφή'
      end
      box.exec
    end

  end

  def selected_items

  end

end

class PatientTable < BasicTable
  @deleteMessage = 'Θα διαγραφούν οι επιλεγμένοι ασθενείς, καθώς και οι επισκέψεις τους. Είστε σίγουροι;'
end

class ExamSetTable < BasicTable
end

class DoctorTable < BasicTable
end



