//
//  MSCapturePlusButton.m
//  GIFMoment
//
//  Created by MonsterSucker on 6/29/16.
//  Copyright © 2016 MonsterTech Studio. All rights reserved.
//

#import "MSCapturePlusButton.h"
#import "CYLTabBarController.h"
#import "CaptureViewController.h"

@implementation MSCapturePlusButton

+ (id)plusButton{
    
    MSCapturePlusButton *capPlusButton = [[MSCapturePlusButton alloc]init];
    UIImage *capPlusButtonImage = [UIImage imageNamed:@"tabbar_Cap"];
    [capPlusButton setImage:capPlusButtonImage forState:UIControlStateNormal];
    
    [capPlusButton sizeToFit];
//    [capPlusButton addTarget:self action:@selector(clickStartCap) forControlEvents:UIControlEventTouchUpInside];
    return capPlusButton;
    
    
    
    
}
//- (void)clickStartCap{
//    CYLTabBarController *tabBarController = [self cyl_tabBarController];
//    CaptureViewController *capVC = [[CaptureViewController alloc]init];
//    
//    [tabBarController presentViewController:capVC animated:YES completion:nil];
//    
//    
//    
//}
# pragma mark -- delegate methods
//tabbar index starting form zero
+ (NSUInteger)indexOfPlusButtonInTabBar{
    
    return 1;
    
}
+ (UIViewController*)plusChildViewController{
    CaptureViewController * capVC = [[CaptureViewController alloc]init];
    [capVC.view setBackgroundColor:[UIColor redColor]];
    UINavigationController *NavC = [[UINavigationController alloc]initWithRootViewController:capVC];
    NavC.navigationBarHidden = YES;
    return NavC;
    
    
}

+ (CGFloat)multiplerInCenterY{
    
    
    
    return 0.3;
    
}




+ (void)load{
    [super registerSubclass];
    
}


@end
