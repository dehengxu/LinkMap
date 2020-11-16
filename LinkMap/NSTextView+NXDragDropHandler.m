//
//  NSTextView+NXDragDropHandler.m
//  LinkMap
//
//  Created by NicholasXu on 2020/11/14.
//  Copyright © 2020 NX. All rights reserved.
//

#import "NSTextView+NXDragDropHandler.h"
#import <objc/message.h>

@implementation NSTextView (NXDragDropHandler)

- (void)draggingEnded:(id<NSDraggingInfo>)sender {
    NSPasteboard *pb = sender.draggingPasteboard;
    NSArray *files = [pb propertyListForType:NSFilenamesPboardType];
    for (NSString *path in files) {
        NSLog(@"path :%@", path);
        [[self dragDropDelegate] didDragDropedItem:path];
        break;
    }
}

- (void)setDragDropDelegate:(id)delegate {
    if (![delegate conformsToProtocol:@protocol(NXDragDropDelegate)]) {
        return;
    }
    objc_setAssociatedObject(self, "nx_dragdrop_delegate", delegate, OBJC_ASSOCIATION_ASSIGN);
}

- (id<NXDragDropDelegate>)dragDropDelegate {
    return (id<NXDragDropDelegate>)objc_getAssociatedObject(self, "nx_dragdrop_delegate");
}

@end
