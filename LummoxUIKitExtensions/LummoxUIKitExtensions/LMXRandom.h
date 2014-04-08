//
//  LMXRandom.h
//
//  Created by Michael Busheikin on 5/30/13.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

// Inclusive.
int LMXRandomIntBetween(int x, int y);
CGFloat LMXRandomFloatBetween(CGFloat x, CGFloat y);

@interface LMXRandom : NSObject

@end
