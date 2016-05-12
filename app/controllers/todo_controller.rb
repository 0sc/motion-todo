class TodoController < UIViewController
  def viewDidLoad
    super
    @table = UITableView.alloc.initWithFrame(self.view.bounds)
    self.view.addSubview(@table)

    @table.dataSource = self
    @data ||= TodoDataSource.new
  end

  def tableView(tableView, numberOfRowsInSection:section)
    @data.data_size
  end

  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:nil)
    cell.tap { |c| c.textLabel.text = @data.data[indexPath.row] }
  end
end
