//
//  LandscapeBugViewController.m
//  Subliminal
//
//  Created by Maximilian Tagher on 3/9/14.
//  Copyright (c) 2014 Inkling. All rights reserved.
//

#import "LandscapeBugViewController.h"

@interface LandscapeBugViewController ()

@end

@implementation LandscapeBugViewController

NSString * const kLandscapeBugButtonAccessibilityLabel = @"buttonLabel";

- (void)loadViewForTestCase:(SEL)testCase {
    
    UIView *view = [[UIView alloc] initWithFrame:self.navigationController.view.bounds];
    view.backgroundColor = [UIColor whiteColor];
    self.view = view;
    
    UIButton *button = ({
        UIButton *button = [UIButton buttonWithType: UIButtonTypeSystem];
        button.accessibilityLabel = kLandscapeBugButtonAccessibilityLabel;
        button.frame = CGRectMake(0, 0, 100, 44);
        [button setTitle: @"A Button" forState: UIControlStateNormal];
        button;
    });
    
    [self.view addSubview:button];
}

@end
