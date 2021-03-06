//
//  SpotterAppDelegate.m
//  spotter
//
//  Created by Linda Du on 3/14/14.
//  Copyright (c) 2014 spotter. All rights reserved.
//

#import "SpotterAppDelegate.h"
#import "SpotterViewController.h"
#import "TableViewController.h"
#import "TabViewController.h"
#import "FriendsViewController.h"
#import <FacebookSDK/FacebookSDK.h>

@implementation SpotterAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Start creating your UITabBarController and set it up here:
    TabViewController *tabBarController = [[TabViewController alloc] init];
    // Finish creating your UITabBarController here
    
    SpotterViewController* vc2 = [[SpotterViewController alloc] init];
    FBFriendPickerViewController* vc1 = [[FBFriendPickerViewController alloc] initWithNibName:nil bundle:nil];
    vc1.delegate = self;
    vc1.title = @"Friends";
    vc1.allowsMultipleSelection = YES;
    [vc1 clearSelection];
    [vc1 loadData];
    
    NSArray* controllers = [NSArray arrayWithObjects:vc1, vc2, nil];
    tabBarController.viewControllers = controllers;

    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    
    /*//Override point for customization after application launch.
    [FBLoginView class];
    [FBRequest class];
    [FBProfilePictureView class];
    
    // Create a LoginUIViewController instance where the login button will be
    SpotterViewController *spotterViewController = [[SpotterViewController alloc] init];
    
    // Set loginUIViewController as root view controller
    [[self window] setRootViewController:spotterViewController];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];*/
    
    
    return YES;
}



- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation {
    
    // Call FBAppCall's handleOpenURL:sourceApplication to handle Facebook app responses
    BOOL wasHandled = [FBAppCall handleOpenURL:url sourceApplication:sourceApplication];
    
    // You can add your app-specific url handling code here if needed
    
    return wasHandled;
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
