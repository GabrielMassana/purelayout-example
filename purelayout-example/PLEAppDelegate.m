//
//  AppDelegate.m
//  purelayout-example
//
//  Created by GabrielMassana on 19/02/2016.
//  Copyright © 2016 GabrielMassana. All rights reserved.
//

#import "PLEAppDelegate.h"

#import "PLEViewController.h"

@interface PLEAppDelegate ()

/**
 Root navigation controller.
 */
@property (nonatomic, strong) UINavigationController *rootNavigationController;

@end

@implementation PLEAppDelegate

#pragma mark - AppLifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window.backgroundColor = [UIColor clearColor];
    self.window.clipsToBounds = NO;
    
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

#pragma mark - Window

- (UIWindow *)window
{
    if (!_window)
    {
        _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        _window.tintAdjustmentMode = UIViewTintAdjustmentModeNormal;
        _window.rootViewController = self.rootNavigationController;
    }
    
    return _window;
}

#pragma mark - Root

- (UINavigationController *)rootNavigationController
{
    if (!_rootNavigationController)
    {
        _rootNavigationController = [[UINavigationController alloc] initWithRootViewController:[[PLEViewController alloc] init]];
    }
    
    return _rootNavigationController;
}

@end
