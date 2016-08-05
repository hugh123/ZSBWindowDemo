//
//  AppDelegate.m
//  ZSBWindowDemo
//
//  Created by hugh on 16/8/2.
//  Copyright © 2016年 hugh. All rights reserved.
//

#import "AppDelegate.h"
#import "ZSBLeftMenuViewController.h"
#import "ZSBMiddleMenuViewController.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //左菜单
    _leftMenuWindow = [[UIWindow alloc] initWithFrame:CGRectMake(0, 0, 150, [UIScreen mainScreen].bounds.size.height)];
    _leftMenuWindow.windowLevel = ZSBWindowLevelNomal;
    [_leftMenuWindow makeKeyAndVisible];
    
    ZSBLeftMenuViewController *leftMenu = [[ZSBLeftMenuViewController alloc] init];
    UINavigationController *leftMenuNav = [[UINavigationController alloc] initWithRootViewController:leftMenu];
    [leftMenuNav.navigationBar setTranslucent:YES];
    
    _leftMenuWindow.rootViewController = leftMenuNav;
    
    //三视图-中间菜单
    _middleMenuWindow = [[UIWindow alloc] initWithFrame:CGRectMake(150, 0, 200, [UIScreen mainScreen].bounds.size.height)];
    _middleMenuWindow.windowLevel = ZSBWindowLevelNomal;
    [_middleMenuWindow makeKeyAndVisible];
    
    ZSBMiddleMenuViewController *middleMenu = [[ZSBMiddleMenuViewController alloc] init];
    UINavigationController *middleMenuNav = [[UINavigationController alloc] initWithRootViewController:middleMenu];
    [middleMenuNav.navigationBar setTranslucent:YES];
    
    _middleMenuWindow.rootViewController = middleMenuNav;
    
    //三视图-右视图
    _rightWindow =  [[UIWindow alloc] initWithFrame:CGRectMake(350, 0, [UIScreen mainScreen].bounds.size.width-350, [UIScreen mainScreen].bounds.size.height)];
    _rightWindow.windowLevel = ZSBWindowLevelNomal;
    [_rightWindow makeKeyAndVisible];
    
    ViewController *viewCtrl = [[ViewController alloc] init];
    UINavigationController *viewNav = [[UINavigationController alloc] initWithRootViewController:viewCtrl];
    [viewNav.navigationBar setTranslucent:YES];
    
    _rightWindow.rootViewController = viewNav;
    
    //双视图-右视图
    _contentWindow =  [[UIWindow alloc] initWithFrame:CGRectMake(150, 0, [UIScreen mainScreen].bounds.size.width-150, [UIScreen mainScreen].bounds.size.height)];
    _contentWindow.windowLevel = ZSBWindowLevelLow;
    [_contentWindow makeKeyAndVisible];
    
    ViewController *viewCtrl1 = [[ViewController alloc] init];
    UINavigationController *viewNav1 = [[UINavigationController alloc] initWithRootViewController:viewCtrl1];
    [viewNav1.navigationBar setTranslucent:YES];
    
    _contentWindow.rootViewController = viewNav1;
    
    //全视图
    _allScreenWindow =  [[UIWindow alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    _allScreenWindow.windowLevel = ZSBWindowLevelLow;
    [_allScreenWindow makeKeyAndVisible];
    
    ViewController *viewCtrl2 = [[ViewController alloc] init];
    UINavigationController *viewNav2 = [[UINavigationController alloc] initWithRootViewController:viewCtrl2];
    [viewNav2.navigationBar setTranslucent:YES];
    
    _allScreenWindow.rootViewController = viewNav2;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
