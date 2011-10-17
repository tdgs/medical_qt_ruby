# encoding: utf-8
require_relative '../qt_models'
require 'Qt4'
require_relative '../lib/ruby_variant.rb'


class BasicTable < Qt::TableView
  class << self; attr_accessor :deleteMessage, :deleteActionText; end
  @deleteMessage = 'generic message'
  @deleteActionText = 'generic text'

  slots "edit_item(const QModelIndex&)", "new_item()", "item_remove(bool)", "new_model(QVariant&)"
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

    @removeAction = Qt::Action.new(self.class.deleteActionText, self)
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/images/Delete.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @removeAction.icon = icon

    self.addAction(@removeAction)



    self.connect(SIGNAL('activated(const QModelIndex&)'), self, :edit_item)
    Qt::Object.connect(@removeAction, SIGNAL('triggered(bool)'), self, SLOT('item_remove(bool)'))
    Qt::Object.connect(self, SIGNAL('edit_request(QVariant&)'), $mainWindow, SLOT('edit_item(QVariant&)'))


  end

  def edit_item(index)
    item = self.model.itemFromIndex(index)
    emit edit_request(item.to_variant)
  end

#  def sizeHint
#    Qt::Size.new(800,600)
#  end

  def contextMenuEvent(event)
    menu = Qt::Menu.new(self)
    menu.addAction(@removeAction) if self.indexAt(event.pos).valid?
    menu.exec(event.globalPos) unless menu.isEmpty
  end

  def item_remove(checked)
    indexes = self.selectionModel.selectedRows(0)
    models = indexes.collect {|idx| self.model.itemFromIndex(idx)}
    question = Qt::MessageBox.new
    question.text = self.class.deleteMessage
    question.standardButtons = Qt::MessageBox::Ok | Qt::MessageBox::Cancel
    if question.exec == Qt::MessageBox::Ok
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
    @deleteActionText = 'Διαγραφη Επιλεγμένων Ασθενών'
end

class ExamSetTable < BasicTable
  @deleteMessage = 'Θα διαγραφούν οι επιλεγμένες επισκέψεις. Είστε σίγουροι;'
  @deleteActionText = 'Διαγραφή Επιλεγμένων Επισκέψεων'
end

class DoctorTable < BasicTable
  @deleteMessage = 'Θα διαγραφούν οι επιλεγμένοι ιατροί. Είστε σίγουροι;'
  @deleteActionText = 'Διαγραφή Επιλεγμένων Ιατρών'
end



