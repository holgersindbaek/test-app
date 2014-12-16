class CustomTableCell < UITableViewCell
  attr_accessor :headline
  attr_accessor :sub_headline
  attr_accessor :price

  def initWithStyle(style, reuseIdentifier:identifier)
    super
    @layout = CustomTableCellLayout.new(root: self).build
    self
  end

  def headline=(new_text)
    @layout.get(:headline).text = new_text
  end
end