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
    [capPlusButton addTarget:self action:@selector(plusChildViewControllerButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    return capPlusButton;
    
    
    
    
}
# pragma mark -- delegate methods
//tabbar index starting form zero
+ (NSUInteger)indexOfPlusButtonInTabBar{
    
    return 1;
    
}
+ (UIViewController*)plusChildViewController{
    CaptureViewController * capVC = [[CaptureViewController alloc]init];
    return capVC;
    
    
}

+ (CGFloat)multiplerInCenterY{
    
    
    
    return 0.3;
    
}




+ (void)load{
    [super registerSubclass];
    
}


@end
