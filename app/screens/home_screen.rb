class HomeScreen < PM::TableScreen
  status_bar :light

  def on_load
    @layout = HomeLayout.new(root: self.view).build
  end

  def table_data
    json = BW::JSON.parse(NSString.stringWithContentsOfFile("listings.json".resource_path).strip)

    [{
      cells: json[:shoes].map do |shoe|
        {
          cell_class: CustomTableCell,
          title: shoe[:headline],
          style: {
            headline: shoe[:headline]
          }
        }
      end
    }]
  end

end
