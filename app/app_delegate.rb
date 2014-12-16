class AppDelegate < PM::Delegate
  status_bar true, animation: :none

  def on_load(app, options)
    return true if RUBYMOTION_ENV == "test"

    # Open the first view controller
    open HomeScreen.new(nav_bar: false)

    # Set the window to the correct size
    self.window.frame = [[0.0, 20.0], [self.window.frame.size.width, self.window.frame.size.height-20]]
  end

end
