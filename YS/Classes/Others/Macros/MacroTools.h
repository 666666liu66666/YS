//
//  MacroTools.h
//  SSFS
//
//  Created by Hero on 16/9/9.
//  Copyright © 2016年 北京山水风尚科技发展有限公司. All rights reserved.
//

#ifndef MacroTools_h
#define MacroTools_h

/**Url*/
#define baseUploadUrl @"http://192.168.58.190/"
#define baseUploadImageUrl BaseURL   @"http://192.168.58.208:8080/lfs/"

/** 宽度高度定义 */
#define kScreen_Width  [UIScreen mainScreen].bounds.size.width
#define kScreen_Height [UIScreen mainScreen].bounds.size.height
#define kB kScreen_Height/667
#define Tabbar_Height 49 //tabbar高度
#define Nav_Height 44 //导航栏高度
#define Status_Height 20//状态栏高度

/** rgb颜色转换（16进制->10进制）*/
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#ifdef DEBUG
#define DLog( s, ... ) NSLog( @"< %@:(%d) > %@", [[NSString stringWithUTF8String:__FILE__] lastPathComponent], __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__] )
#else
#define DLog( s, ... )
#endif

#define IS_IOS8 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8)
#define IS_IOS10 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 10)

#define us [NSUserDefaults standardUserDefaults]

/**设备的宽度*/
#define MinDeviceWidth 320
#define MiddleDeviceWidth 375
#define MaxDeviceWidth 414

#endif /* MacroTools_h */
