//
//  UIView+LMXPositioning.m
//
//  Created by Michael Busheikin on 5/26/13.
//

#import "UIView+LMXPositioning.h"

@implementation UIView (LMXPositioning)

- (CGFloat)lmx_top {
    return self.frame.origin.y;
}

- (void)setLmx_top:(CGFloat)top {
    self.frame = CGRectMake(self.lmx_left, top, self.lmx_width, self.lmx_height);
}

- (CGFloat)lmx_bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setLmx_bottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - self.lmx_height;
    self.frame = frame;
}

- (CGFloat)lmx_left {
    return self.frame.origin.x;
}

- (void)setLmx_left:(CGFloat)left {
    CGRect frame = self.frame;
    frame.origin.x = left;
    self.frame = frame;
}

- (CGFloat)lmx_right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setLmx_right:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - self.lmx_width;
    self.frame = frame;
}

- (CGFloat)lmx_width {
    return self.frame.size.width;
}

- (void)setLmx_width:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)lmx_height {
    return self.frame.size.height;
}

- (void)setLmx_height:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (void)lmx_centerWithView:(UIView *)centerIn {
    CGRect frameToCenter = [self.superview convertRect:centerIn.frame fromView:centerIn.superview];
    self.lmx_left = floorf(frameToCenter.origin.x + frameToCenter.size.width / 2.0 - self.lmx_width / 2.0);
    self.lmx_top = floorf(frameToCenter.origin.y + frameToCenter.size.height / 2.0 - self.lmx_height / 2.0);
}

- (void)lmx_horizontallyCenterWithView:(UIView *)centerIn {
    CGRect frameToCenter = [self.superview convertRect:centerIn.frame fromView:centerIn.superview];
    self.lmx_left = floorf(frameToCenter.origin.x + frameToCenter.size.width / 2.0 - self.lmx_width / 2.0);
}

- (void)lmx_verticallyCenterWithView:(UIView *)centerIn {
    CGRect frameToCenter = [self.superview convertRect:centerIn.frame fromView:centerIn.superview];
    self.lmx_top = floorf(frameToCenter.origin.y + frameToCenter.size.height / 2.0 - self.lmx_height / 2.0);
}

@end
