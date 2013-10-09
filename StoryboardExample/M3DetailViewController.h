//
//  M3DetailViewController.h
//  StoryboardExample
//
//  Created by Martin Pilkington on 09/10/2013.
//  Copyright (c) 2013 M Cubed Software Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface M3DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
