//
//  M3EntriesController.m
//  StoryboardExample
//
//  Created by Martin Pilkington on 09/10/2013.
//  Copyright (c) 2013 M Cubed Software Ltd. All rights reserved.
//

#import "M3EntriesController.h"
#import "M3Entry.h"

@implementation M3EntriesController

- (id)init {
	if (self = [super init]) {
		[self loadEntries];
	}
	return self;
}

- (void)loadEntries {
	NSString *path = [[NSBundle mainBundle] pathForResource:@"Data" ofType:@"plist"];
	NSArray *entries = [NSArray arrayWithContentsOfFile:path];
	
	NSMutableArray *newEntries = [NSMutableArray array];
	for (NSDictionary *entryDict in entries) {
		M3Entry *entry = [M3Entry new];
		[entry setName:entryDict[@"name"]];
		[entry setBody:entryDict[@"body"]];
		[entry setImage:[UIImage imageNamed:entryDict[@"image"]]];
		[entry setMoreDetails:entryDict[@"moreDetails"]];
		[newEntries addObject:entry];
	}
	
	_entries = [newEntries copy];
}

@end
