//
//  M3EntryDetailsContentView.m
//  StoryboardExample
//
//  Created by Martin Pilkington on 09/10/2013.
//  Copyright (c) 2013 M Cubed Software Ltd. All rights reserved.
//

#import "M3EntryDetailsContentView.h"
#import "M3Entry.h"

@interface M3EntryDetailsContentView ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *bodyLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end



@implementation M3EntryDetailsContentView

- (void)setEntry:(M3Entry *)entry {
	if (_entry != entry) {
		_entry = entry;
		[self reloadData];
	}
}

- (void)reloadData {
	NSLog(@"%f", [self.nameLabel preferredMaxLayoutWidth]);
	[self.nameLabel setText:self.entry.name];
	[self.bodyLabel setText:self.entry.body];
	[self.imageView setImage:self.entry.image];
}

@end
