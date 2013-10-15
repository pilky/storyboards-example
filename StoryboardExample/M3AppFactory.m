//
//  M3AppFactory.m
//  StoryboardExample
//
//  Created by Martin Pilkington on 09/10/2013.
//  Copyright (c) 2013 M Cubed Software Ltd. All rights reserved.
//

#import "M3AppFactory.h"
#import "M3EntriesViewController.h"
#import "M3EntryDetailsViewController.h"
#import "M3SettingsViewController.h"
#import "M3EntriesController.h"
#import "M3Entry.h"

@implementation M3AppFactory {
	UINavigationController *entriesNavigationController;
	UINavigationController *settingsNavigationController;
	M3EntriesController *entriesController;
}

- (UINavigationController *)entriesNavigationController {
	if (!entriesNavigationController) {
		UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Entries" bundle:nil];
		entriesNavigationController = [storyboard instantiateInitialViewController];
		
		M3EntriesViewController *entriesViewController = (id)entriesNavigationController.topViewController;
		[entriesViewController setAppController:self.appController];
		[entriesViewController setEntriesController:self.entriesController];
	}
	return entriesNavigationController;
}

- (M3EntryDetailsViewController *)entryDetailsViewControllerForEntry:(M3Entry *)aEntry {
	M3EntryDetailsViewController *controller = [self.entriesNavigationController.storyboard instantiateViewControllerWithIdentifier:@"entryDetails"];
	[controller setEntry:aEntry];
	return controller;
}

- (UINavigationController *)settingsNavigationController {
	if (!settingsNavigationController) {
		UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Settings" bundle:nil];
		settingsNavigationController = [storyboard instantiateInitialViewController];
		
		M3SettingsViewController *settingsViewController = (id)settingsNavigationController.topViewController;
		[settingsViewController setAppController:self.appController];
		[settingsViewController setEntriesController:self.entriesController];
	}
	return settingsNavigationController;
}

- (M3EntriesController *)entriesController {
	if (!entriesController) {
		entriesController = [M3EntriesController new];
	}
	return entriesController;
}

@end
