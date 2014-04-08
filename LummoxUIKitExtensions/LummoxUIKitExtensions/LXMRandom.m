//
//  LMXRandom.m
//
//  Created by Michael Busheikin on 5/30/13.
//

#import "LMXRandom.h"

NSInteger LMXRandomIntBetween(NSInteger x, NSInteger y) {
    if (x == y) {
        return x;
    }
    
    NSInteger min = MIN(x, y);
    NSInteger max = MAX(x, y);
    NSInteger diff = max - min + 1;
    NSInteger random = arc4random() % diff;
    return (random + min);
}

CGFloat LMXRandomFloatBetween(CGFloat x, CGFloat y) {
    if (x == y) {
        return x;
    }
    
    CGFloat min = MIN(x, y);
    CGFloat max = MAX(x, y);
    CGFloat diff = max - min;
    CGFloat random = ((CGFloat)arc4random() / RAND_MAX) * diff;
    return (random + min);

}

@implementation LMXRandom

@end
