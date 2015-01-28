//
//  AppDelegate.m
//  ExuenetSNS
//
//  Created by Cao JianRong on 15-1-28.
//  Copyright (c) 2015年 Cao JianRong. All rights reserved.
//

#import "AppDelegate.h"
#import "WWSideslipViewController.h"
#import "IndexViewController.h"
#import "LeftIndexViewController.h"
#import "WelcomeViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [[UIApplication sharedApplication] setStatusBarHidden:NO];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:YES];
    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    self.window.backgroundColor = [UIColor whiteColor];
    
    WelcomeViewController *welcome = [[WelcomeViewController alloc] init];

    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont boldSystemFontOfSize:20.0f],NSFontAttributeName,[UIColor colorFromString:@"ffffff"],NSForegroundColorAttributeName,nil];
    
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:welcome];
    navi.navigationBar.titleTextAttributes = dict;
    navi.navigationBar.tintColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1];
    navi.navigationBar.barTintColor = [UIColor colorWithRed:0.99 green:0.62 blue:0.36 alpha:1];
    [navi.navigationBar setHidden:YES];
    [welcome release];
    
    self.window.rootViewController = navi;
    [navi release];
    
    [self.window makeKeyAndVisible];
    
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
