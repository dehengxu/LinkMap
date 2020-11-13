//
//  AppDelegate.m
//  LinkMap
//
//  Created by Suteki(67111677@qq.com) on 4/8/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)openDocument:(id)sender {
    NSLog(@"openDocument :%@", sender);
    if ([self.application.mainWindow.contentViewController isKindOfClass:ViewController.class]) {
        ViewController *vc = (ViewController *)self.application.mainWindow.contentViewController;
        [vc chooseFile:sender];
    }
}

- (void)exitApp:(id)sender {
    exit(0);
}

@end
