//
//  AppDelegate.m
//  Trans2FlexTestApp
//
//  Created by July on 2017/11/9.
//  Copyright © 2017年 July. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@property (nonatomic, strong) UIViewController *rootViewController;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    ViewController *rootViewController = [[ViewController alloc] initWithNibName:nil bundle:nil];
    self.rootViewController = rootViewController;
    self.window.rootViewController = rootViewController;
    return YES;
}

@end
