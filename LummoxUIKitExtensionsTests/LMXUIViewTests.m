//
//  LMXUIViewTests.m
//
//  Created by Michael Busheikin on 5/26/13.
//

#import <XCTest/XCTest.h>

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#import "UIView+LMXExtensions.h"

@interface LMXUIViewTests : XCTestCase

@end

@implementation LMXUIViewTests

- (void)testEasyAccessors {
    UIView *noFrame = [[UIView alloc] initWithFrame:CGRectZero];
    
    XCTAssertTrue(noFrame.lmx_left == 0, @"No frame should have no valid values.");
    XCTAssertTrue(noFrame.lmx_top == 0, @"No frame should have no valid values.");
    XCTAssertTrue(noFrame.lmx_width == 0, @"No frame should have no valid values.");
    XCTAssertTrue(noFrame.lmx_height == 0, @"No frame should have no valid values.");
    XCTAssertTrue(noFrame.lmx_right == 0, @"No frame should have no valid values.");
    XCTAssertTrue(noFrame.lmx_bottom == 0, @"No frame should have no valid values.");
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(10.0, 20.0, 30, 40)];
    
    XCTAssertTrue(view1.frame.origin.x == view1.lmx_left, @"left doesn't match.");
    XCTAssertTrue(view1.frame.origin.y == view1.lmx_top, @"top doesn't match.");
    XCTAssertTrue(view1.frame.size.width == view1.lmx_width, @"width doesn't match.");
    XCTAssertTrue(view1.frame.size.height == view1.lmx_height, @"height doesn't match.");
    XCTAssertTrue(CGRectGetMaxX(view1.frame) == view1.lmx_right, @"right doesn't match.");
    XCTAssertTrue(CGRectGetMaxY(view1.frame) == view1.lmx_bottom, @"bottom doesn't match.");
    
    XCTAssertTrue(view1.lmx_left == 10.0, @"view1 should have no valid values.");
    XCTAssertTrue(view1.lmx_top == 20, @"view1 should have no valid values.");
    XCTAssertTrue(view1.lmx_width == 30, @"view1 should have no valid values.");
    XCTAssertTrue(view1.lmx_height == 40, @"view1 should have no valid values.");
    XCTAssertTrue(view1.lmx_right == 40, @"view1 should have no valid values.");
    XCTAssertTrue(view1.lmx_bottom == 60, @"view1 should have no valid values.");
    
    view1.lmx_left = 110.0;
    XCTAssertTrue(view1.lmx_left == 110.0, @"After change, left is wrong.");
    XCTAssertTrue(view1.frame.origin.x == view1.lmx_left, @"After change, left is wrong.");
    XCTAssertTrue(view1.lmx_right == 140.0, @"After change, right is wrong.");
    
    view1.lmx_top = 120.0;
    XCTAssertTrue(view1.lmx_top == 120.0, @"After left change, top is wrong.");
    XCTAssertTrue(view1.lmx_top == view1.frame.origin.y, @"After left change, top is wrong.");
    XCTAssertTrue(view1.lmx_bottom == 160.0, @"After left change, bottom is wrong.");
    
    // Recheck all values.
    XCTAssertTrue(view1.frame.origin.x == view1.lmx_left, @"left doesn't match.");
    XCTAssertTrue(view1.frame.origin.y == view1.lmx_top, @"top doesn't match.");
    XCTAssertTrue(view1.frame.size.width == view1.lmx_width, @"width doesn't match.");
    XCTAssertTrue(view1.frame.size.height == view1.lmx_height, @"height doesn't match.");
    XCTAssertTrue(CGRectGetMaxX(view1.frame) == view1.lmx_right, @"right doesn't match.");
    XCTAssertTrue(CGRectGetMaxY(view1.frame) == view1.lmx_bottom, @"bottom doesn't match.");
    
    view1.lmx_right = 30;
    XCTAssertTrue(view1.frame.origin.x == view1.lmx_left, @"After right change, invalid parameter.");
    XCTAssertTrue(view1.lmx_left == 0.0, @"After right change, invalid parameter.");
    XCTAssertTrue(view1.lmx_width == 30, @"After right change, invalid parameter.");
    XCTAssertTrue(view1.lmx_right == 30, @"After right change, invalid parameter.");
    
    view1.lmx_bottom = 60.0;
    XCTAssertTrue(view1.lmx_top == 20, @"After bottom change, invalid parameter.");
    XCTAssertTrue(view1.lmx_height == 40, @"After bottom change, invalid parameter.");
    XCTAssertTrue(view1.lmx_bottom == 60, @"After bottom change, invalid parameter.");
    
    view1.lmx_width = 100.0;
    view1.lmx_height = 100.0;
    
    // Recheck all parameters.
    XCTAssertTrue(view1.frame.origin.x == view1.lmx_left, @"left doesn't match.");
    XCTAssertTrue(view1.frame.origin.y == view1.lmx_top, @"top doesn't match.");
    XCTAssertTrue(view1.frame.size.width == view1.lmx_width, @"width doesn't match.");
    XCTAssertTrue(view1.frame.size.height == view1.lmx_height, @"height doesn't match.");
    XCTAssertTrue(CGRectGetMaxX(view1.frame) == view1.lmx_right, @"right doesn't match.");
    XCTAssertTrue(CGRectGetMaxY(view1.frame) == view1.lmx_bottom, @"bottom doesn't match.");
}

- (void)testCentering {
    UIView *superview = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 1000.0, 1000.0)];
    
    CGRect startFrame = CGRectMake(0.0, 0.0, 10.0, 10.0);
    
    UIView *view = [[UIView alloc] initWithFrame:startFrame];
    [superview addSubview:view];
    
    UIView *equalView = [[UIView alloc] initWithFrame:view.frame];
    [superview addSubview:equalView];
    
    [view lmx_centerWithView:equalView];
    XCTAssertTrue(CGRectEqualToRect(view.frame, startFrame), @"Rects should be equal");
    
    [view lmx_horizontallyCenterWithView:equalView];
    XCTAssertTrue(CGRectEqualToRect(view.frame, startFrame), @"Rects should be equal");
    
    [view lmx_verticallyCenterWithView:equalView];
    XCTAssertTrue(CGRectEqualToRect(view.frame, startFrame), @"Rects should be equal");
    
    UIView *biggerView = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 30.0, 30.0)];
    [superview addSubview:biggerView];
    
    view.frame = startFrame;
    [view lmx_horizontallyCenterWithView:biggerView];
    XCTAssertTrue(CGRectEqualToRect(view.frame, CGRectMake(10.0, 0.0, 10.0, 10.0)), @"Rects should be equal");
    
    view.frame = startFrame;
    [view lmx_verticallyCenterWithView:biggerView];
    XCTAssertTrue(CGRectEqualToRect(view.frame, CGRectMake(0.0, 10.0, 10.0, 10.0)), @"Rects should be equal");
    
    view.frame = startFrame;
    [view lmx_centerWithView:biggerView];
    XCTAssertTrue(CGRectEqualToRect(view.frame, CGRectMake(10.0, 10.0, 10.0, 10.0)), @"Rects should be equal");
    
    UIView *oddView = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 29.0, 29.0)];
    [superview addSubview:oddView];
    
    view.frame = startFrame;
    [view lmx_horizontallyCenterWithView:oddView];
    XCTAssertTrue(CGRectEqualToRect(view.frame, CGRectMake(9.0, 0.0, 10.0, 10.0)), @"Rects should be equal");
    
    view.frame = startFrame;
    [view lmx_verticallyCenterWithView:oddView];
    XCTAssertTrue(CGRectEqualToRect(view.frame, CGRectMake(0.0, 9.0, 10.0, 10.0)), @"Rects should be equal");
    
    view.frame = startFrame;
    [view lmx_centerWithView:oddView];
    XCTAssertTrue(CGRectEqualToRect(view.frame, CGRectMake(9.0, 9.0, 10.0, 10.0)), @"Rects should be equal");
    
    UIView *smallerView = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 6.0, 6.0)];
    [superview addSubview:smallerView];
    
    view.frame = startFrame;
    [view lmx_horizontallyCenterWithView:smallerView];
    XCTAssertTrue(CGRectEqualToRect(view.frame, CGRectMake(-2.0, 0.0, 10.0, 10.0)), @"Rects should be equal");
    
    view.frame = startFrame;
    [view lmx_verticallyCenterWithView:smallerView];
    XCTAssertTrue(CGRectEqualToRect(view.frame, CGRectMake(0.0, -2.0, 10.0, 10.0)), @"Rects should be equal");
    
    view.frame = startFrame;
    [view lmx_centerWithView:smallerView];
    XCTAssertTrue(CGRectEqualToRect(view.frame, CGRectMake(-2.0, -2.0, 10.0, 10.0)), @"Rects should be equal");
    
}

- (void)testViewRemoval {
    UIView *parent = [[UIView alloc] initWithFrame:CGRectZero];
    
    UIView *child1 = [UIView new];
    UIView *child2 = [UIView new];
    
    XCTAssertTrue([parent.subviews count] == 0, @"Wrong subview count");
    
    [parent addSubview:child1];
    [parent addSubview:child2];
    
    XCTAssertTrue([parent.subviews count] == 2, @"Wrong subview count");
    
    [parent lmx_removeAllSubviews];
    
    XCTAssertTrue([parent.subviews count] == 0, @"Wrong subview count");
    
}

@end
