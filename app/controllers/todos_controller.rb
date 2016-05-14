class TodosController < UIViewController
  def viewDidLoad
    super
    @table = UITableView.alloc.initWithFrame(self.view.bounds)
    self.view.addSubview(@table)

    @table.dataSource = self
    @todos = Todo.all
  end

  def tableView(tableView, numberOfRowsInSection:section)
    @todos.size
  end

  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:nil)
    cell.tap { |c| c.textLabel.text = @todos[indexPath.row].name }
  end

  def tableView(tableView, didSelectRowAtIndexPath:indexPath)
    tableView.deselectRowAtIndexPath(indexPath, animated:true)
    todo = @todos[indexPath.row]
    todo_controller = TodoController.new(todo)
    self.navigationController.pushViewController(todo_controller, animated: true)
  end
end
