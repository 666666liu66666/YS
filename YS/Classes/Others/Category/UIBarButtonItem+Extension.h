//
//  UIBarButtonItem+Extension.h
//  SSFS
//
//  Created by Hero on 16/9/9.
//  Copyright © 2016年 北京山水风尚科技发展有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)
+ (UIBarButtonItem *)barButtonTitle:(NSString *)title image:(NSString *)image frame:(CGRect)frame target:(id)target sel:(SEL)selector;
@end
