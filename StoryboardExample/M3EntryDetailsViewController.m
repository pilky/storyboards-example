//
//  M3EntryDetailsViewController.m
//  StoryboardExample
//
//  Created by Martin Pilkington on 09/10/2013.
//  Copyright (c) 2013 M Cubed Software Ltd. All rights reserved.
//

#import "M3EntryDetailsViewController.h"
#import "M3EntryDetailsContentView.h"
#import "M3EntryMoreDetailsViewController.h"

@interface M3EntryDetailsViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet M3EntryDetailsContentView *contentView;

@end

@implementation M3EntryDetailsViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	UINib *nib = [UINib nibWithNibName:@"EntryDetailsContentView" bundle:nil];
	[nib instantiateWithOwner:self options:nil];
	
	[self.scrollView addSubview:self.contentView];
	[self.contentView setTranslatesAutoresizingMaskIntoConstraints:NO];
	NSDictionary *views = @{@"contentView": self.contentView};
	[self.scrollView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|[contentView]|"
																			options:0 metrics:nil views:views]];
	[self.scrollView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[contentView]|"
																			options:0 metrics:nil views:views]];
	[self.contentView setEntry:self.entry];
}

- (void)setEntry:(M3Entry *)entry {
	_entry = entry;
	[self.contentView setEntry:entry];
}

- (IBAction)showMoreDetails:(id)sender {
	M3EntryMoreDetailsViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"moreDetails"];
	[controller setEntry:self.entry];
	[self.navigationController pushViewController:controller animated:YES];
}

@end
