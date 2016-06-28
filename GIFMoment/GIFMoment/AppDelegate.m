//
//  AppDelegate.m
//  GIFMoment
//
//  Created by Monster on 6/21/16.
//  Copyright © 2016 MonsterTech Studio. All rights reserved.
//

#import "AppDelegate.h"
#import "CYLTabBarController.h"
#import "MainViewController.h"
#import "CaptureViewController.h"
#import "SettingViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen ].bounds];
    [self.window makeKeyAndVisible];
    [self _setUpChildVCs];
    [self.window setRootViewController:self.tabBarController];
    

    return YES;
}
- (void)_setUpChildVCs{
    MainViewController *historyVC = [[MainViewController alloc]init];
    UINavigationController *historyNav = [[UINavigationController alloc]initWithRootViewController:historyVC];
    SettingViewController *settingVC = [[SettingViewController alloc]init];
    UINavigationController *settingNav = [[UINavigationController alloc]initWithRootViewController:settingVC];
//    CaptureViewController *capVC = [[CaptureViewController alloc]init];
//    UINavigationController *capNav = [[UINavigationController alloc]initWithRootViewController:capVC];
    
    CYLTabBarController *mstabBarController = [[CYLTabBarController alloc]init];
    [self _customizeTabbarForContollers:mstabBarController];
    [mstabBarController setViewControllers:@[
                                                                                                    historyNav,
                                                                                                    settingNav,
                                                                                                    ]];

    self.tabBarController = mstabBarController;
    
    
    
}
- (void)_customizeTabbarForContollers :(CYLTabBarController *)tabBarController {
    NSDictionary *tabItemDic1 = @{
                                                                            CYLTabBarItemTitle    :  @"",
                                                                            CYLTabBarItemImage :  @"tabbar_History",
                                                                            CYLTabBarItemSelectedImage : @"tabbar_History_selected",
                                                                            };
    
    NSDictionary *tabItemDic2 = @{
                                                                            CYLTabBarItemTitle    :  @"",
                                                                            CYLTabBarItemImage :  @"tabbar_Setting",
                                                                            CYLTabBarItemSelectedImage : @"tabbar_Setting_selected",
                                                                            };
    NSArray *tabBarItemAttributes = @[tabItemDic1,tabItemDic2];
    tabBarController.tabBarItemsAttributes = tabBarItemAttributes;
    

}



- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
