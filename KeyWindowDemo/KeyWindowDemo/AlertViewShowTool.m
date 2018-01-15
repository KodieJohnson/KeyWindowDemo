//
//  AlertViewShowTool.m
//  FrameworkTest
//
//  Created by KODIE on 2018/1/12.
//  Copyright © 2018年 kodie. All rights reserved.
//

#import "AlertViewShowTool.h"

@implementation AlertViewShowTool
+ (instancetype)defaultTool{
    static AlertViewShowTool *tool;
    static dispatch_once_t once_token;
    dispatch_once(&once_token, ^{
        tool = [[AlertViewShowTool alloc] init];
    });
    return tool;
}

- (void)removeAlert{
    UIView *currentView = [self getCurrentView];
    UIView *showView = [currentView viewWithTag:99999999];
    [showView removeFromSuperview];
}

- (void)showAlertWithMessage:(NSString *)message{
    UIView *showView = [[UIView alloc] init];
    showView.frame = CGRectMake(0, 0, 200, 100);
    showView.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0];
    
    UIView *currentView = [self getCurrentView];
    [currentView addSubview:showView];
    showView.center = currentView.center;
    
    UILabel *showLabel = [[UILabel alloc] init];
    showLabel.textColor = [UIColor colorWithRed:218/255.0 green:98/255.0 blue:73/255.0 alpha:1.0];
    showLabel.frame = CGRectMake(0, 35, 200, 30);
    [showView addSubview:showLabel];
    showLabel.font = [UIFont systemFontOfSize:27];
    
    showLabel.text = message;
    showLabel.textAlignment = NSTextAlignmentCenter;
    
    showView.tag = 99999999;
}

- (UIWindow *)getWindow{
    return [[UIApplication sharedApplication] keyWindow];
}
- (UIView *)getCurrentView {
    return [self getVisibleViewControllerFrom:(UIViewController *)[[UIApplication sharedApplication] keyWindow].rootViewController].view;
}
- (UIViewController *)getCurrentController{
    return [self getVisibleViewControllerFrom:(UIViewController *)[[UIApplication sharedApplication] keyWindow].rootViewController];
}
- (UIViewController *)getVisibleViewControllerFrom:(UIViewController*)vc {
    if ([vc isKindOfClass:[UINavigationController class]]) {
        return [self getVisibleViewControllerFrom:[((UINavigationController*) vc) visibleViewController]];
    }else if ([vc isKindOfClass:[UITabBarController class]]){
        return [self getVisibleViewControllerFrom:[((UITabBarController*) vc) selectedViewController]];
    } else {
        if (vc.presentedViewController) {
            return [self getVisibleViewControllerFrom:vc.presentedViewController];
        } else {
            return vc;
        }
    }
}

@end
