# encoding: utf-8
require 'Qt4'
require_relative 'ui'

class MainWindow < Qt::MainWindow
  
  def initialize(parent = nil)
	super(parent)
	git 
  end
end




