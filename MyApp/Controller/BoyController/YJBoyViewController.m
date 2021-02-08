//
//  YJBoyViewController.m
//  MyApp
//
//  Created by Apple on 2021/2/1.
//  Copyright © 2021 Apple. All rights reserved.
//

#import "YJBoyViewController.h"

@interface YJBoyViewController ()

@property (strong, nonatomic) UILabel *timeLab;

@end

@implementation YJBoyViewController

#pragma mark - Lifecycle

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view.

	self.view.backgroundColor = [UIColor whiteColor];
	[self setNavigationBar];
	[self createUI];
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];

	[self refreshUI];
}

#pragma mark - UI

/// 设置导航栏
- (void)setNavigationBar {
	self.navigationController.navigationBar.barTintColor = BOY_TINT_COLOR;
	self.navigationItem.title = @"每天爱你多一点";
}

- (void)createUI {
	UILabel *timeLab = [[UILabel alloc] init];
	timeLab.font = [UIFont systemFontOfSize:24.0f];
	[self.view addSubview:timeLab];
	[timeLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.centerY.equalTo(self.view);
	 }];
	self.timeLab = timeLab;
}

- (void)refreshUI {
    NSInteger days = [YJTools getDaysIntervalFromLoveToNow];
    self.timeLab.text = [NSString stringWithFormat:@"第%ld天", (long)days];
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
