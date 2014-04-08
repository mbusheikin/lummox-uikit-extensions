//
//  UIColor+BGUtilities.m
//
//  Created by Michael Busheikin on 5/29/13.
//

#import "UIColor+LMXRandom.h"

#import "LMXRandom.h"

@implementation UIColor (LMXRandom)

+ (UIColor *)lmx_randomColor {
    CGFloat red = LMXRandomFloatBetween(0.0, 1.0);
    CGFloat green = LMXRandomFloatBetween(0.0, 1.0);
    CGFloat blue = LMXRandomFloatBetween(0.0, 1.0);
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
}

+ (UIColor *)lmx_randomColorWithLittleGreen {
    CGFloat red = LMXRandomFloatBetween(0.3, 1.0);
    CGFloat green = LMXRandomFloatBetween(0.0, 0.3);
    CGFloat blue = LMXRandomFloatBetween(0.3, 1.0);
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
}

+ (UIColor *)lmx_randomBrightColor {
    CGFloat red = LMXRandomFloatBetween(0.7, 1.0);
    CGFloat green = LMXRandomFloatBetween(0.7, 1.0);
    CGFloat blue = LMXRandomFloatBetween(0.7, 1.0);
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
}

@end
