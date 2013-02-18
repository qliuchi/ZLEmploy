//
//  TestAppDelegate.m
//  ZLEmploy
//
//  Created by Ibokan on 13-2-18.
//  Copyright (c) 2013年 alex. All rights reserved.
//

#import "TestAppDelegate.h"

#import "SearchJobViewController.h"
#import "MyzlViewController.h"
#import "RealTimeViewController.h"
#import "SearchSalaryViewController.h"
#import "JobGuideViewController.h"
#import "CusTabBarController.h"

@implementation TestAppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    //searchJobView
    SearchJobViewController *searchJobViewController = [SearchJobViewController new];
    UINavigationController *searchJobNavi = [[UINavigationController alloc]initWithRootViewController:searchJobViewController];
    [searchJobViewController release];
    //myzlView
    MyzlViewController *myzlViewController = [MyzlViewController new];
    UINavigationController *myzlNavi = [[UINavigationController alloc]initWithRootViewController:myzlViewController];
    [myzlViewController release];
    //realTimeView
    RealTimeViewController *realTimeViewController = [RealTimeViewController new];
    UINavigationController *realTimeNavi = [[UINavigationController alloc]initWithRootViewController:realTimeViewController];
    [realTimeViewController release];
    //searchSalary
    SearchSalaryViewController *searchSalaryViewController = [SearchSalaryViewController new];
    UINavigationController *searchSalaryNavi = [[UINavigationController alloc]initWithRootViewController:searchSalaryViewController];
    [searchSalaryViewController release];
    //jobGuide
    JobGuideViewController *jobGuideViewController = [JobGuideViewController new];
    UINavigationController *jobGuideNavi = [[UINavigationController alloc]initWithRootViewController:jobGuideViewController];
    [jobGuideViewController release];
    
    NSArray *arr = [NSArray arrayWithObjects:searchJobNavi,myzlNavi,realTimeNavi,searchSalaryNavi,jobGuideNavi, nil];
    
    
    CusTabBarController *tabbar = [[CusTabBarController alloc]init];
    tabbar.viewControllers = arr;
    tabbar.selectedIndex = 0;
    
    self.window.rootViewController = tabbar;
    
    [tabbar release];
    
    
    
    
    [self.window makeKeyAndVisible];
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
