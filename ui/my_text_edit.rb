class MyTextEdit < Qt::PlainTextEdit
  def text
    self.plainText
  end

  def text=(t)
    self.plainText = t
  end
end
