class TodoDataSource
  attr_writer :data

  def tableView(tableView, numberOfRowsInSection:section)
    puts "called"
    @data.size
  end

  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    p data
    cell = UITableView.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:nil)
    cell.textLabel.text = @data[indexPath.row]
    cell
  end
end
