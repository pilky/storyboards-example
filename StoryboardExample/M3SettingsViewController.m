//
//  M3SettingsViewController.m
//  StoryboardExample
//
//  Created by Martin Pilkington on 09/10/2013.
//  Copyright (c) 2013 M Cubed Software Ltd. All rights reserved.
//

#import "M3SettingsViewController.h"
#import "M3EntriesController.h"
#import "M3Entry.h"
#import "M3AppController.h"

@interface M3SettingsViewController ()

@end

@implementation M3SettingsViewController

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return self.entriesController.entries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell"];
	
	M3Entry *entry = self.entriesController.entries[indexPath.row];
	[cell.textLabel setText:entry.name];
	
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	M3Entry *entry = self.entriesController.entries[indexPath.row];
	[self.appController showDetailsForEntry:entry];
	[self.appController hideSettings];
}

- (IBAction)done:(id)sender {
	[self.appController hideSettings];
}

@end
