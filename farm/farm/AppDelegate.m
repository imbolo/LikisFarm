//
//  AppDelegate.m
//  farm
//
//  Created by liuyang on 14-5-14.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"navbar.png"] forBarMetrics:UIBarMetricsDefault];
    
    [application setStatusBarStyle:UIStatusBarStyleLightContent];
    

    //    [[UINavigationBar appearance] setBackButtonBackgroundImage:@"iconMenu.png" forState:UIControlStateNormal barMetrics:UIBarMetricsDefault]; // 返回按钮的背景
//    NSArray *familyNames = [UIFont familyNames];
//    for (NSString *familyName in familyNames) {
//        printf("Family: %s \n",[familyName UTF8String]);
//        NSArray *fontNames = [UIFont fontNamesForFamilyName:familyName];
//        for (NSString * fontName in fontNames) {
//            printf("\tFont: %s \n",[fontName UTF8String]);
//        }
//    }

    [[UILabel appearance] setFont:[UIFont fontWithName:@"HiraginoSansGB-W3" size:21.0]];
    
    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, nil, NSShadowAttributeName,[UIFont fontWithName:@"HiraginoSansGB-W3" size:24.0], NSFontAttributeName, nil]];

    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
