class TodoDataSource
 def data
   @data ||= %w(Milk Orange\ Juice Apples Bananas Brocolli Carrots Beef
               Chicken Enchiladas Hot\ Dogs Butter Bread Pasta Rice).map{|thing| "Buy #{thing}"}
 end

  def tableView(tableView, numberOfRowsInSection:section)
    data.size
  end

  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:nil)
    cell.tap { |c| c.textLabel.text = data[indexPath.row] }
  end
end
