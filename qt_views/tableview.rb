# encoding: utf-8
require_relative '../qt_models'
require 'Qt4'
require 'spreadsheet'
require_relative '../lib/ruby_variant.rb'
require_relative '../ui/excel_export'
require 'launchy'

class BasicTable < Qt::TableView
  class << self; attr_accessor :deleteMessage, :deleteActionText; end
  @deleteMessage = 'generic message'
  @deleteActionText = 'generic text'

  slots "edit_item(const QModelIndex&)", "new_item()", "item_remove(bool)", "new_model(QVariant&)", "excel_export_dialog(bool)"
  signals "edit_request(QVariant&)"
  def initialize(parent = nil, model = nil)
    super(parent)

    setModel(model) if model

    sizePolicy = Qt::SizePolicy.new(Qt::SizePolicy::Expanding, Qt::SizePolicy::Expanding)
    self.sortingEnabled = true
    self.selectionBehavior = Qt::AbstractItemView::SelectRows
    self.selectionMode = Qt::AbstractItemView::ExtendedSelection
    self.alternatingRowColors = true

    @removeAction = Qt::Action.new(self.class.deleteActionText, self)
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/images/user-group-delete.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @removeAction.icon = icon
    @removeAction.enabled = false
    self.addMenuAction(@removeAction)

    @excelAction = Qt::Action.new('Εξαγωγή σε Excel', self)
    excelIcon = Qt::Icon.new
    excelIcon.addPixmap(Qt::Pixmap.new(":/images/excel-icon.jpg"), Qt::Icon::Normal, Qt::Icon::Off)
    @excelAction.icon = excelIcon
    @excelAction.enabled = true
    self.addMenuAction(@excelAction)



    self.connect(SIGNAL('activated(const QModelIndex&)'), self, :edit_item)
    Qt::Object.connect(@removeAction, SIGNAL('triggered(bool)'), self, SLOT('item_remove(bool)'))
    Qt::Object.connect(self, SIGNAL('edit_request(QVariant&)'), $mainWindow, SLOT('edit_item(QVariant&)'))
    Qt::Object.connect(@excelAction, SIGNAL('triggered(bool)'), self, SLOT('excel_export_dialog(bool)'))

    @selected = []
  end

  def selectionChanged(selected, deselected)
    @selected = selected
    if selected.count == 0
      @removeAction.enabled = false
    else
      @removeAction.enabled = true
    end
    super(selected, deselected)
  end

  def edit_item(index)
    item = self.model.itemFromIndex(index)
    emit edit_request(item.to_variant)
  end

  def contextMenuEvent(event)
    menu = Qt::Menu.new(self)
    menu.addAction(@removeAction) if self.indexAt(event.pos).valid?
    menu.exec(event.globalPos) unless menu.isEmpty
    menu.dispose
  end

  def items_from_indexes(indexes)
    indexes.collect {|idx| self.model.itemFromIndex(idx)}
  end

  def selected_items
    items_from_indexes self.selectionModel.selectedRows(0)
  end

  def all_items
    self.model.all_items
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

  def excel_export_dialog(checked)
    excelExport = ExcelExport.new(self)
    excelExport.setup_ui(self)
    excelExport.exec
  end

  def excel_export(filename, selection)
    Spreadsheet.client_encoding = 'UTF-8'
    book = Spreadsheet::Workbook.new
    sheet1 = book.create_worksheet
    items = selection ? self.selected_items : self.all_items
    if items.nil? or items.empty?
      return 'Δεν επιλέχθηκε κανένα στοιχείο!'
    end

    columnHash = self.model.columnNamesHash
    # set title row
    sheet1.row(0).replace columnHash.values

    # write data
    cr_row = 1
    items.each do |item|
      item_data = columnHash.keys.collect {|key| item.send(key)}
      sheet1.row(cr_row).replace item_data
      cr_row +=1
    end

    book.write filename
    Launchy.open(filename)
    return nil
  end

end

class PatientTable < BasicTable
  @deleteMessage = 'Θα διαγραφούν οι επιλεγμένες επισκέψεις. Είστε σίγουροι;'
    @deleteActionText = 'Διαγραφη Επιλεγμένων'
end

class ExamSetTable < BasicTable
  @deleteMessage = 'Θα διαγραφούν τα επιλεγμένα στοιχεία. Είστε σίγουροι;'
  @deleteActionText = 'Διαγραφή Επιλεγμένων'
end

class DoctorTable < BasicTable
  @deleteMessage = 'Θα διαγραφούν τα επιλεγμένα στοιχεία. Είστε σίγουροι;'
  @deleteActionText = 'Διαγραφή Επιλεγμένων'
end



