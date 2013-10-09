//
//  M3EntryAdditionalBodyViewController.m
//  StoryboardExample
//
//  Created by Martin Pilkington on 09/10/2013.
//  Copyright (c) 2013 M Cubed Software Ltd. All rights reserved.
//

#import "M3EntryMoreDetailsViewController.h"
#import "M3Entry.h"

@interface M3EntryMoreDetailsViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation M3EntryMoreDetailsViewController

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	
	[self reloadData];
}

- (void)setEntry:(M3Entry *)entry {
	if (_entry != entry) {
		_entry = entry;
		[self reloadData];
	}
}

- (void)reloadData {
	[self.textView setText:self.entry.moreDetails];
}

@end
