//
//  M3AppFactory.h
//  StoryboardExample
//
//  Created by Martin Pilkington on 09/10/2013.
//  Copyright (c) 2013 M Cubed Software Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@class M3AppController, M3EntriesNavigationController, M3EntryDetailsViewController, M3SettingsNavigationController, M3EntriesController;
@class M3Entry;

@interface M3AppFactory : NSObject

@property (weak) M3AppController *appController;

@property (readonly) M3EntriesNavigationController *entriesNavigationController;
- (M3EntryDetailsViewController *)entryDetailsViewControllerForEntry:(M3Entry *)aEntry;

@property (readonly) M3SettingsNavigationController *settingsNavigationController;

@property (readonly) M3EntriesController *entriesController;

@end
