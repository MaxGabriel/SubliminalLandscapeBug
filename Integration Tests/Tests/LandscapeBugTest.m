//
//  LandscapeBugTest.m
//  Subliminal
//
//  Created by Maximilian Tagher on 3/9/14.
//  Copyright (c) 2014 Inkling. All rights reserved.
//

#import "SLIntegrationTest.h"
#import "LandscapeBugViewController.h"

@interface LandscapeBugTest : SLIntegrationTest

@end

@implementation LandscapeBugTest

+ (NSString *)testCaseViewControllerClassName {
    return NSStringFromClass([LandscapeBugViewController class]);
}

- (void)focus_testButtonIsVisibleInPortrait
{
    [[SLDevice currentDevice] setOrientation:UIDeviceOrientationPortrait];
    [self wait:0.5];
    SLButton *button = [SLButton elementWithAccessibilityLabel:kLandscapeBugButtonAccessibilityLabel];
    SLAssertTrue([button isVisible], @"Button should be visible");
}

- (void)focus_testButtonIsVisibleInLandscapeLeft
{
    [[SLDevice currentDevice] setOrientation:UIDeviceOrientationLandscapeLeft];
    [self wait:0.5];
    SLButton *button = [SLButton elementWithAccessibilityLabel:kLandscapeBugButtonAccessibilityLabel];
    SLAssertTrue([button isVisible], @"Button should be visible");
}

- (void)focus_testButtonIsVisibleInLandscapeRight
{
    [[SLDevice currentDevice] setOrientation:UIDeviceOrientationLandscapeRight];
    [self wait:0.5];
    SLButton *button = [SLButton elementWithAccessibilityLabel:kLandscapeBugButtonAccessibilityLabel];
    SLAssertTrue([button isVisible], @"Button should be visible");
}



@end
