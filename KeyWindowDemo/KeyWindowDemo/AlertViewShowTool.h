//
//  AlertViewShowTool.h
//  FrameworkTest
//
//  Created by KODIE on 2018/1/12.
//  Copyright © 2018年 kodie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface AlertViewShowTool : NSObject
+ (instancetype)defaultTool;
- (void)showAlertWithMessage:(NSString *)message;
- (void)removeAlert;
@end
