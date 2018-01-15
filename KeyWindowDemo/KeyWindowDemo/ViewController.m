//
//  ViewController.m
//  KeyWindowDemo
//
//  Created by KODIE on 2018/1/14.
//  Copyright © 2018年 kodie. All rights reserved.
//

#import "ViewController.h"
#import "PushViewController.h"
#import "AlertViewShowTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    NSLog(@"viewDidLoad keyWindow = %@",keyWindow);
    
    [self addPushBtn];
    
    self.view.backgroundColor = [UIColor colorWithRed:218/255.0 green:98/255.0 blue:73/255.0 alpha:1.0];
    
    //加载AlertView
    [[AlertViewShowTool defaultTool] showAlertWithMessage:@"I LOVE YOU."];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    NSLog(@"viewWillAppear keyWindow = %@",keyWindow);
    
    [[AlertViewShowTool defaultTool] showAlertWithMessage:@"I LOVE YOU."];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    NSLog(@"viewDidAppear keyWindow = %@",keyWindow);
    
    [[AlertViewShowTool defaultTool] showAlertWithMessage:@"I LOVE YOU."];
}

- (void)addPushBtn{
    UIButton *btn = [[UIButton alloc]init];
    btn.frame = CGRectMake(0, 100, 200, 50);
    CGFloat btnCenterX = self.view.center.x;
    CGFloat btnCenterY = btn.frame.origin.y + btn.frame.size.height * 0.5;
    CGPoint btnCenter = CGPointMake(btnCenterX, btnCenterY);
    btn.center = btnCenter;
    btn.layer.cornerRadius = 5;
    btn.layer.masksToBounds = YES;
    btn.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0];
    [self.view addSubview:btn];
    [btn setTitle:@"PUSH" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor colorWithRed:218/255.0 green:98/255.0 blue:73/255.0 alpha:1.0] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(didClickPushBtn) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didClickPushBtn{
    PushViewController *pvc = [[PushViewController alloc] init];
    [self presentViewController:pvc animated:YES completion:nil];
}

@end
