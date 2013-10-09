//
//  M3EntriesViewController.m
//  StoryboardExample
//
//  Created by Martin Pilkington on 09/10/2013.
//  Copyright (c) 2013 M Cubed Software Ltd. All rights reserved.
//

#import "M3EntriesViewController.h"
#import "M3AppController.h"
#import "M3EntriesController.h"
#import "M3Entry.h"

@interface M3EntriesViewController ()

@end

@implementation M3EntriesViewController

- (IBAction)showSettings:(id)sender {
	[self.appController showSettings];
}


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
}

@end
