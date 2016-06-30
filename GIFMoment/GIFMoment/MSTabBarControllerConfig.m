//
//  MSTabBarControllerConfig.m
//  GIFMoment
//
//  Created by Monster on 6/30/16.
//  Copyright © 2016 MonsterTech Studio. All rights reserved.
//

#import "MSTabBarControllerConfig.h"
#import "MainViewController.h"
#import "SettingViewController.h"



@import Foundation;
@import UIKit;
@interface MSBaseNavigationContorller : UINavigationController

@end
@implementation MSBaseNavigationContorller

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}






@end






@interface MSTabBarControllerConfig ()

@property (nonatomic, readwrite, strong) CYLTabBarController *tabBarController;

@end

@implementation MSTabBarControllerConfig

- (CYLTabBarController *)tabBarController{
    
    if (_tabBarController == nil) {
        CYLTabBarController  *tabbarController = [[CYLTabBarController alloc]initWithViewControllers:self.viewControllers tabBarItemsAttributes:self.tabBarItemsAttributesForController];
        [self customizeTabBarAppearace:tabbarController];
        _tabBarController = tabbarController;
    }
    
    
    
    return _tabBarController;
    
    
}
- (NSArray*)viewControllers{
    MainViewController *historyVC = [[MainViewController alloc]init];
    UINavigationController *historyNav = [[UINavigationController alloc]initWithRootViewController:historyVC];
    SettingViewController *settingVC = [[SettingViewController alloc]init];
    UINavigationController *settingNav = [[UINavigationController alloc]initWithRootViewController:settingVC];
    
    NSArray *viewControllers = @[
                                 historyNav,
                                 settingNav,
                                 ];
    return viewControllers;
    
}
- (NSArray *)tabBarItemsAttributesForController{
    NSDictionary *tabItemDic1 = @{
                                  //                                                                            CYLTabBarItemTitle    :  @"",
                                  CYLTabBarItemImage :  @"tabbar_History",
                                  CYLTabBarItemSelectedImage : @"tabbar_History_selected",
                                  };
    
    NSDictionary *tabItemDic2 = @{
                                  //                                                                            CYLTabBarItemTitle    :  @"",
                                  CYLTabBarItemImage :  @"tabbar_Setting",
                                  CYLTabBarItemSelectedImage : @"tabbar_Setting_selected",
                                  };
    NSArray *tabBarItemAttributes = @[tabItemDic1,tabItemDic2];

    return tabBarItemAttributes;
    
}
- (void)customizeTabBarAppearace :(CYLTabBarController *)tabBarController{
    
   
    [[UITabBar appearance] setBackgroundImage:[[UIImage alloc] init]];
    [[UITabBar appearance] setBackgroundColor:[UIColor whiteColor]];
    [[UITabBar appearance] setShadowImage:[UIImage imageNamed:@"tapbar_top_line"]];

    
    
    
}

@end
