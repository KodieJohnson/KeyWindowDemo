//
//  PushViewController.m
//  KeyWindowDemo
//
//  Created by KODIE on 2018/1/15.
//  Copyright © 2018年 kodie. All rights reserved.
//

#import "PushViewController.h"

@interface PushViewController ()

@end

@implementation PushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    NSLog(@"PushViewController viewDidLoad keyWindow = %@",keyWindow);
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    NSLog(@"PushViewController viewWillAppear keyWindow = %@",keyWindow);
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    NSLog(@"PushViewController viewDidAppear keyWindow = %@",keyWindow);
}

@end
