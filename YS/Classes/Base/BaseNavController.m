//
//  BaseNavController.m
//  SSFS
//
//  Created by Hero on 16/9/22.
//  Copyright © 2016年 Hero. All rights reserved.
//

#import "BaseNavController.h"
#import "UIBarButtonItem+Extension.h"

@interface BaseNavController ()

@end

@implementation BaseNavController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.viewControllers.count > 0) {
        UIBarButtonItem *backItem = [UIBarButtonItem barButtonTitle:nil image:@"icon_faxian" frame:CGRectMake(0, 0, 22, 22) target:self sel:@selector(backNav)];
        viewController.navigationItem.leftBarButtonItem = backItem;
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

- (void)backNav{
    [self popViewControllerAnimated:YES];
}
@end
