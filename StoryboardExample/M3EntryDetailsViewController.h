//
//  M3EntryDetailsViewController.h
//  StoryboardExample
//
//  Created by Martin Pilkington on 09/10/2013.
//  Copyright (c) 2013 M Cubed Software Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class M3Entry;

@interface M3EntryDetailsViewController : UIViewController

@property (strong, nonatomic) M3Entry *entry;

- (IBAction)showMoreDetails:(id)sender;

@end
