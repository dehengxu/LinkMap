//
//  AppDelegate.h
//  LinkMap
//
//  Created by Suteki(67111677@qq.com) on 4/8/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ViewController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate, NSDraggingSource>

@property (nonatomic, weak) IBOutlet NSApplication *application;

- (IBAction)openDocument:(id)sender;
- (IBAction)exitApp:(id)sender;
@end

