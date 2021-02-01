//
//  YJTabBarController.m
//  MyApp
//
//  Created by Apple on 2021/2/1.
//  Copyright © 2021 Apple. All rights reserved.
//

#import "YJTabBarController.h"
#import "YJBoyViewController.h"
#import "YJGirlViewController.h"

@interface YJTabBarController ()

@end

@implementation YJTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    
    [self createChildViewControllers];
}

- (void)createChildViewControllers {
    YJBoyViewController *boyViewController = [[YJBoyViewController alloc] init];
    [self setupChildViewControllerIn:boyViewController withImage:@"boy_nor" andSelectedImage:@"boy_sel" andTitle:@"小细" andTag:0];
    
    YJGirlViewController *girlViewController = [[YJGirlViewController alloc] init];
    [self setupChildViewControllerIn:girlViewController withImage:@"girl_nor" andSelectedImage:@"girl_sel" andTitle:@"阿金" andTag:1];
}

- (void)setupChildViewControllerIn:(UIViewController *)viewController withImage:(NSString *)image andSelectedImage:(NSString *)selectedImage andTitle:(NSString *)title andTag:(NSInteger)tag {
    viewController.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.tabBarItem.tag = tag;
    viewController.tabBarItem.title = title;
    
    UINavigationController *navC = [[UINavigationController alloc] initWithRootViewController:viewController];
    [self addChildViewController:navC];
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
