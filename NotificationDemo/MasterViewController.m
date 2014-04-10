//
//  MasterViewController.m
//  Notification Demo
//
//  Created by Aaron Friedman on 4/10/14.
//  Copyright (c) 2014 Aaron Friedman. All rights reserved.
//

#import "MasterViewController.h"

@interface MasterViewController ()

@end

@implementation MasterViewController

- (IBAction)showNotificationButtonPressed:(id)sender {
    NSUserNotification *notification = [[NSUserNotification alloc] init];
    [notification setTitle:@"New Message"];
    [notification setInformativeText:@"Blah blah blah blah"];
    [notification setDeliveryDate:[NSDate dateWithTimeInterval:0 sinceDate:[NSDate date]]];
    [notification setSoundName:NSUserNotificationDefaultSoundName];
    NSUserNotificationCenter *center = [NSUserNotificationCenter defaultUserNotificationCenter];
    [center scheduleNotification:notification];
}

# pragma mark notification delegate

- (BOOL)userNotificationCenter:(NSUserNotificationCenter *)center shouldPresentNotification:(NSUserNotification *)notification {
    return YES;
}

# pragma mark object lifecycle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSUserNotificationCenter *center = [NSUserNotificationCenter defaultUserNotificationCenter];
        center.delegate = self;
    }
    return self;
}
@end
