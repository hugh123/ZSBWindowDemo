//
//  AppDelegate.h
//  ZSBWindowDemo
//
//  Created by hugh on 16/8/2.
//  Copyright © 2016年 hugh. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    ZSBWindowLevelNomal = 1000,
    ZSBWindowLevelLow = 100,
    ZSBWindowLevelHigh = 2000,
} ZSBWindowLevel;



@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *leftMenuWindow;

@property (strong, nonatomic) UIWindow *middleMenuWindow;

@property (strong, nonatomic) UIWindow *contentWindow;

@property (strong, nonatomic) UIWindow *rightWindow;

@property (strong, nonatomic) UIWindow *allScreenWindow;

@end

