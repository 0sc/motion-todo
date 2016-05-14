class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = TodoController.alloc.initWithNibName(nil, bundle:nil)
    rootViewController.title = 'Todo'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    true
  end
end
