//
//  MasterViewController.h
//  Notification Demo
//
//  Created by Aaron Friedman on 4/10/14.
//  Copyright (c) 2014 Aaron Friedman. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MasterViewController : NSViewController <NSUserNotificationCenterDelegate>

- (IBAction)showNotificationButtonPressed:(id)sender;

@end
