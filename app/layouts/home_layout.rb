class HomeLayout < MK::Layout

  def layout
    root :home do
    end
  end

  def home_style
    separatorStyle UITableViewCellSeparatorStyleNone
    background_color "#f5f5f5".uicolor
  end

end
