# JSwipableTabBarController
JSwipableTabBarController allows user to swipe among tabs in application.

To make it wort just drop the CustomTabBarViewController in your project bundle.

To use it in storyboard, jsut change the class of your tabBarController from UITabBarController to CustomTabBarViewController


If you are using tab bar programatically, then create the instance of CustomTabBarViewController 

let tabBarVC  = CustomTabBarViewController()

And assign the number of tabs your application will have to the numOf_tabs property of the CustomTabBarViewController

tabBarVC.numOf_tabs = 3
