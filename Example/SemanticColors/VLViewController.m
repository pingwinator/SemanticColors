//
//  VLViewController.m
//  SemanticColors
//
//  Created by Vasyl Liutikov on 06/17/2019.
//  Copyright (c) 2019 Vasyl Liutikov. All rights reserved.
//

#import "VLViewController.h"
#import "UIColor+SemanticColors.h"
@interface VLViewController ()

@end

@implementation VLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSDictionary <NSString*, UIColor*>*colors = @{
                                                  @"safeSystemGray2Color": UIColor.safeSystemGray2Color,
                                                  @"safeSystemGray3Color": UIColor.safeSystemGray3Color,
                                                  @"safeSystemGray4Color": UIColor.safeSystemGray4Color,
                                                  @"safeSystemGray5Color": UIColor.safeSystemGray5Color,
                                                  @"safeSystemGray6Color": UIColor.safeSystemGray6Color,
                                                  };
    for (NSString *key in [colors.allKeys sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)]) {
        if (@available(iOS 13.0, *)) {
            NSLog(@"key: %@, value: %@", key, [colors[key] resolvedColorWithTraitCollection:self.traitCollection]);
        } else {
            // Fallback on earlier versions
            NSLog(@"key: %@, value: %@", key, colors[key]);
        }

    }
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
