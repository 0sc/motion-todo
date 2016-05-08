class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'Todo'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    @table = UITableView.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    source = TodoDataSource.new
    source.data = %w(Milk Orange\ Juice Apples Bananas Brocolli Carrots Beef
               Chicken Enchiladas Hot\ Dogs Butter Bread Pasta Rice).map{|thing| "Buy #{thing}"}
    @table.dataSource = source
    @table.delegate = source
    rootViewController.view = @table

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    true
  end
end
