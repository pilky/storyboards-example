//
//  M3AppController.m
//  StoryboardExample
//
//  Created by Martin Pilkington on 09/10/2013.
//  Copyright (c) 2013 M Cubed Software Ltd. All rights reserved.
//

#import "M3AppController.h"
#import "M3AppFactory.h"
#import "M3EntriesNavigationController.h"
#import "M3SettingsNavigationController.h"
#import "M3EntryDetailsViewController.h"

@implementation M3AppController

- (id)initWithAppFactory:(M3AppFactory *)aFactory {
	if (self = [super init]) {
		_factory = aFactory;
		[_factory setAppController:self];
	}
	return self;
}

- (void)launchInWindow:(UIWindow *)aWindow {
	[aWindow setRootViewController:self.factory.entriesNavigationController];
	[aWindow makeKeyAndVisible];
}

- (void)showDetailsForEntry:(M3Entry *)aEntry {
	[self.factory.entriesNavigationController pushViewController:[self.factory entryDetailsViewControllerForEntry:aEntry]
														animated:YES];
}

- (void)showSettings {
	[self.factory.entriesNavigationController presentViewController:self.factory.settingsNavigationController
														   animated:YES completion:nil];
}

- (void)hideSettings {
	[self.factory.entriesNavigationController dismissViewControllerAnimated:YES completion:nil];
}

@end
