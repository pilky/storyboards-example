//
//  M3AppController.h
//  StoryboardExample
//
//  Created by Martin Pilkington on 09/10/2013.
//  Copyright (c) 2013 M Cubed Software Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@class M3Entry, M3AppFactory;

@interface M3AppController : NSObject

- (id)initWithAppFactory:(M3AppFactory *)aFactory;
@property (readonly) M3AppFactory *factory;

- (void)launchInWindow:(UIWindow *)aWindow;

- (void)showDetailsForEntry:(M3Entry *)aEntry;

- (void)showSettings;
- (void)hideSettings;

@end
