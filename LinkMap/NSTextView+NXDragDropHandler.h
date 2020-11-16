//
//  NSTextView+NXDragDropHandler.h
//  LinkMap
//
//  Created by NicholasXu on 2020/11/14.
//  Copyright © 2020 ND. All rights reserved.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@protocol NXDragDropDelegate
- (void)didDragDropedItem:(NSString *)item;
@end

@interface NSTextView (NXDragDropHandler) <NSDraggingSource>

- (void)setDragDropDelegate:(id<NXDragDropDelegate>) delegate;

@end

NS_ASSUME_NONNULL_END
