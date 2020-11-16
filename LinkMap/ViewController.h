//
//  ViewController.h
//  LinkMap
//
//  Created by Suteki(67111677@qq.com) on 4/8/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "NSTextView+NXDragDropHandler.h"

@interface ViewController : NSViewController<NXDragDropDelegate>

- (IBAction)chooseFile:(id)sender;

- (void)selectFile:(NSString *)path;

@end

