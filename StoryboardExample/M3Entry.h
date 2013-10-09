//
//  M3Entry.h
//  StoryboardExample
//
//  Created by Martin Pilkington on 09/10/2013.
//  Copyright (c) 2013 M Cubed Software Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface M3Entry : NSObject

@property (copy) NSString *name;
@property (copy) NSString *body;
@property (strong) UIImage *image;
@property (copy) NSString *moreDetails;

@end
