//
//  M3AppDelegate.m
//  StoryboardExample
//
//  Created by Martin Pilkington on 09/10/2013.
//  Copyright (c) 2013 M Cubed Software Ltd. All rights reserved.
//

#import "M3AppDelegate.h"
#import "M3AppController.h"
#import "M3AppFactory.h"

@implementation M3AppDelegate {
	M3AppController *appController;
	UIWindow *window;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	[self setWindow:[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]]];
	
	[self.appController launchInWindow:self.window];
	return YES;
}

- (M3AppController *)appController {
	if (!appController) {
		appController = [[M3AppController alloc] initWithAppFactory:[M3AppFactory new]];
	}
	return appController;
}

@end
