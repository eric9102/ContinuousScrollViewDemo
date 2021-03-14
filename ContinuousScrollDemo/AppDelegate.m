//
//  AppDelegate.m
//  ContinuousScrollDemo
//
//  Created by 李雪峰 on 2021/3/14.
//  Copyright © 2021 Eric. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    ViewController *viewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ViewController"];
    self.window = [[UIWindow alloc] init];
    self.window.backgroundColor = UIColor.cyanColor;
    self.window.rootViewController = viewController;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}



@end
