class CustomTableCellLayout < MK::Layout
  def layout
    root :cell do
      add UILabel, :headline
    end
  end

  def cell_style
    selectionStyle UITableViewCellSelectionStyleNone
    background_color UIColor.clearColor
  end

  def headline_style
    background_color UIColor.blueColor
    frame [[0, 0], [200, 40]]
  end
end