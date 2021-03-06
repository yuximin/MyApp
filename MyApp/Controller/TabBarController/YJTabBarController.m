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
    [self setupChildViewControllerIn:boyViewController withImage:@"boy_nor" andSelectedImage:@"boy_sel" andTitle:@"小细" andTitleColor:[UIColor grayColor] andTitleSelectedColor:BOY_TINT_COLOR andTag:0];
    
    YJGirlViewController *girlViewController = [[YJGirlViewController alloc] init];
    [self setupChildViewControllerIn:girlViewController withImage:@"girl_nor" andSelectedImage:@"girl_sel" andTitle:@"阿金" andTitleColor:[UIColor grayColor] andTitleSelectedColor:GIRL_TINT_COLOR andTag:1];
}

- (void)setupChildViewControllerIn:(UIViewController *)viewController withImage:(NSString *)image andSelectedImage:(NSString *)selectedImage andTitle:(NSString *)title andTitleColor:(UIColor *)titleColor andTitleSelectedColor:(UIColor *)titleSelectedColor andTag:(NSInteger)tag {
    viewController.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.tabBarItem.tag = tag;
    viewController.tabBarItem.title = title;
    
    // 设置标签栏字体颜色大小
    [viewController.tabBarItem setTitleTextAttributes:@{
        NSForegroundColorAttributeName: titleColor,
        NSFontAttributeName: [UIFont systemFontOfSize:14]
     } forState:UIControlStateNormal];
    [viewController.tabBarItem setTitleTextAttributes:@{
        NSForegroundColorAttributeName: titleSelectedColor,
        NSFontAttributeName: [UIFont systemFontOfSize:14]
    } forState:UIControlStateSelected];
    
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
