//
//  AppDelegate.m
//  KeyWindowDemo
//
//  Created by KODIE on 2018/1/14.
//  Copyright © 2018年 kodie. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    ViewController *vc = [[ViewController alloc] init];
    _window.rootViewController = vc;
    
    UIWindow *keyWindowBefore = [[UIApplication sharedApplication] keyWindow];
    NSLog(@"成为KeyWindow之前 %@",keyWindowBefore);
    
    [_window makeKeyAndVisible];
    
    UIWindow *keyWindowAfter = [[UIApplication sharedApplication] keyWindow];
    NSLog(@"成为KeyWindow之后 %@",keyWindowAfter);
    
    return YES;
}

@end
