//
//  M3SettingsViewController.h
//  StoryboardExample
//
//  Created by Martin Pilkington on 09/10/2013.
//  Copyright (c) 2013 M Cubed Software Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class M3EntriesController, M3AppController;

@interface M3SettingsViewController : UITableViewController

@property (strong) M3EntriesController *entriesController;
@property (weak) M3AppController *appController;

- (IBAction)done:(id)sender;

@end
