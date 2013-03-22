//
//  GSAppDelegate.m
//  GSAnimationBlockDelegate
//
//  Created by Martin Moizard on 3/22/13.
//  Copyright (c) 2013 Martin Moizard. All rights reserved.
//

#import "GSAppDelegate.h"

@implementation GSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor blackColor];
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
