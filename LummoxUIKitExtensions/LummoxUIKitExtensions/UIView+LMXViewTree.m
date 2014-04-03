//
//  UIView+LMXViewTree.m
//  LummoxUIKitExtensions
//
//  Created by Michael Busheikin on 2014-04-03.
//  Copyright (c) 2014 Lummox Labs. All rights reserved.
//

#import "UIView+LMXViewTree.h"

@implementation UIView (LMXViewTree)

- (void)lmx_removeAllSubviews {
    NSArray *subviewsCopy = [self.subviews copy];
    
    for (UIView *subview in subviewsCopy) {
        [subview removeFromSuperview];
    }
}

@end
