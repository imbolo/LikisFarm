//
//  AppDelegate.m
//  farm
//
//  Created by liuyang on 14-5-14.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "AppDelegate.h"
#import "Config.h"

@implementation AppDelegate

@synthesize splashView;

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

    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowColor = [UIColor whiteColor];
    shadow.shadowOffset = CGSizeMake(0, 0);
    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:
                                                           [UIColor whiteColor], NSForegroundColorAttributeName,
                                                           shadow, NSShadowAttributeName,
                                                           [UIFont fontWithName:@"HiraginoSansGB-W3" size:18.0], NSFontAttributeName, nil]];
    [[UILabel appearance] setFont:[UIFont fontWithName:@"HiraginoSansGB-W3" size:18.0]];
    
//    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, nil, NSShadowAttributeName,[UIFont fontWithName:@"HiraKakuProN-W3" size:36.0], NSFontAttributeName, nil]];
    
//    [self playWelcomeAnimation];
  
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

- (void)playWelcomeAnimation
{
    //splash view
    [self.window makeKeyAndVisible];
    
    splashView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 1920)];//568)];
    [splashView setImage:[UIImage imageNamed:@"splash"]];
    
    [self.window addSubview:splashView];
    [self.window bringSubviewToFront:splashView];
    
    
    [UIView animateWithDuration:4.5
                          delay:0.3
                        options:UIViewAnimationCurveEaseOut
                     animations:^
     {
         CGRect frame = splashView.frame;
         frame.origin.y = (-1456);//(-1380);
         frame.origin.x = 0;
         splashView.frame = frame;
     }
                     completion:^(BOOL finished)
     {
         [UIView animateWithDuration:0.6
                               delay:0.3
                             options:UIViewAnimationCurveEaseOut
                          animations:^
          {
              splashView.alpha = 0;
          }
                          completion:^(BOOL finished)
          {
              NSLog(@"Fade out Completed");
              //              [splashView ];
          }];
         
         
     }];
    

}

- (void) checkIOSVersion
{
    double version = [[UIDevice currentDevice].systemVersion doubleValue];
//    [Config getInstance]
}

@end
