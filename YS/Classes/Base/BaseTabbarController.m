//
//  BaseTabbarController.m
//  SSFS
//
//  Created by Hero on 16/9/22.
//  Copyright © 2016年 Hero. All rights reserved.
//

#import "BaseTabbarController.h"
#import "BaseNavController.h"
#import "ShopViewController.h"
#import "CustomerController.h"
#import "MarketingController.h"
#import "MoreViewController.h"
@interface BaseTabbarController ()<UITabBarControllerDelegate>

@end

@implementation BaseTabbarController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpAllChildViewController];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:UIColorFromRGB(0x999999),NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:UIColorFromRGB(0xe74c27),NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
    self.delegate = self;
}

- (void)setUpAllChildViewController{
    ShopViewController *shopVC = [[ShopViewController alloc]init];
    CustomerController *customerVC = [[CustomerController alloc]init];
    MarketingController *marketVC = [[MarketingController alloc]init];
    MoreViewController *moreVC = [[MoreViewController alloc]init];
    [self setUpOneChildViewController:shopVC image:[UIImage imageNamed:@"tab_home"] selectedImage:[UIImage imageNamed:@"tab_home_pre"] title:@"店铺" NavTitle:nil];
    [self setUpOneChildViewController:customerVC image:[UIImage imageNamed:@"tab_my"] selectedImage:[UIImage imageNamed:@"tab_my_pre"] title:@"客户" NavTitle:@"2"];
    [self setUpOneChildViewController:marketVC image:[UIImage imageNamed:@"icon_faxian"] selectedImage:[UIImage imageNamed:@"icon_faxian_xuanzhong"] title:@"营销" NavTitle:nil];
    [self setUpOneChildViewController:moreVC image:[UIImage imageNamed:@"tab_classify"] selectedImage:[UIImage imageNamed:@"tab_classify_pre"] title:@"更多" NavTitle:nil];
}

- (void)setUpOneChildViewController:(UIViewController *)viewController image:(UIImage *)image selectedImage:(UIImage *)selectedImage title:(NSString *)title NavTitle:(NSString *)titleNav{
    viewController.tabBarItem.title = title;
    viewController.tabBarItem.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.tabBarItem.selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    BaseNavController *nav = [[BaseNavController alloc] initWithRootViewController:viewController];

    [self addChildViewController:nav];
}
-(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{

}

@end
