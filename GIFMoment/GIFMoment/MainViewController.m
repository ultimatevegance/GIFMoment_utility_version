//
//  MainViewController.m
//  GIFMoment
//
//  Created by Monster on 6/23/16.
//  Copyright © 2016 MonsterTech Studio. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self naviUI];

}
- (void)naviUI{
    UIImageView *wordLogoView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"wordlogoRed"]];
    wordLogoView.frame = CGRectMake(0, 0, 200, 48.5);
    [self.navigationItem setTitleView:wordLogoView];
   
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
