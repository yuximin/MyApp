//
//  YJGirlViewController.m
//  MyApp
//
//  Created by Apple on 2021/2/1.
//  Copyright © 2021 Apple. All rights reserved.
//

#import "YJGirlViewController.h"

@interface YJGirlViewController ()

@end

@implementation YJGirlViewController

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self setNavigationBar];
}

#pragma mark - UI

/// 设置导航栏
- (void)setNavigationBar {
    self.navigationController.navigationBar.barTintColor = GIRL_TINT_COLOR;
    self.navigationItem.title = @"我想你啦";
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
