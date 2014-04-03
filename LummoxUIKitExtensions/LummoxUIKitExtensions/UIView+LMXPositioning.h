//
//  UIView+LMXPositioning.m
//
//  Created by Michael Busheikin on 5/26/13.
//

#import <UIKit/UIKit.h>

@interface UIView (LMXPositioning)

#pragma mark - Positioning methods

@property (nonatomic) CGFloat lmx_top;
@property (nonatomic) CGFloat lmx_bottom;
@property (nonatomic) CGFloat lmx_left;
@property (nonatomic) CGFloat lmx_right;
@property (nonatomic) CGFloat lmx_width;
@property (nonatomic) CGFloat lmx_height;

- (void)lmx_centerWithView:(UIView *)centerIn;
- (void)lmx_horizontallyCenterWithView:(UIView *)centerIn;
- (void)lmx_verticallyCenterWithView:(UIView *)centerIn;


@end
