//
//  AppDelegate.m
//  Notification Demo
//
//  Created by Aaron Friedman on 4/10/14.
//  Copyright (c) 2014 Aaron Friedman. All rights reserved.
//

#import "AppDelegate.h"
#import "MasterViewController.h"

@interface  AppDelegate()
@property (nonatomic,strong) IBOutlet MasterViewController *masterViewController;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    self.masterViewController = [[MasterViewController alloc] initWithNibName:@"MasterViewController" bundle:nil];
    
    [self.window.contentView addSubview:self.masterViewController.view];
    self.masterViewController.view.frame = ((NSView*)self.window.contentView).bounds;
}

@end