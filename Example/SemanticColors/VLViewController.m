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
                                                  //Gray
                                                  @"safeSystemGray2Color": UIColor.safeSystemGray2Color,
                                                  @"safeSystemGray3Color": UIColor.safeSystemGray3Color,
                                                  @"safeSystemGray4Color": UIColor.safeSystemGray4Color,
                                                  @"safeSystemGray5Color": UIColor.safeSystemGray5Color,
                                                  @"safeSystemGray6Color": UIColor.safeSystemGray6Color,
                                                  //Foreground
                                                  @"safeLabelColor": UIColor.safeLabelColor,
                                                  @"safeSecondaryLabelColor": UIColor.safeSecondaryLabelColor,
                                                  @"safeTertiaryLabelColor": UIColor.safeTertiaryLabelColor,
                                                  @"safeQuaternaryLabelColor": UIColor.safeQuaternaryLabelColor,
                                                  @"safeLinkColor": UIColor.safeLinkColor,
                                                  @"safePlaceholderTextColor": UIColor.safePlaceholderTextColor,
                                                  @"safeSeparatorColor": UIColor.safeSeparatorColor,
                                                  @"safeOpaqueSeparatorColor": UIColor.safeOpaqueSeparatorColor,
                                                  //Background
                                                  @"safeSystemBackgroundColor": UIColor.safeSystemBackgroundColor,
                                                  @"safeSecondarySystemBackgroundColor": UIColor.safeSecondarySystemBackgroundColor,
                                                  @"safeTertiarySystemBackgroundColor": UIColor.safeTertiarySystemBackgroundColor,
                                                  @"safeSystemGroupedBackgroundColor": UIColor.safeSystemGroupedBackgroundColor,
                                                  @"safeSecondarySystemGroupedBackgroundColor": UIColor.safeSecondarySystemGroupedBackgroundColor,
                                                  @"safeTertiarySystemGroupedBackgroundColor": UIColor.safeTertiarySystemGroupedBackgroundColor,
                                                  //Fill
                                                  @"safeSystemFillColor": UIColor.safeSystemFillColor,
                                                  @"safeSecondarySystemFillColor": UIColor.safeSecondarySystemFillColor,
                                                  @"safeTertiarySystemFillColor": UIColor.safeTertiarySystemFillColor,
                                                  @"safeQuaternarySystemFillColor": UIColor.safeQuaternarySystemFillColor,
                                                  };
    

    for (NSString *key in [colors.allKeys sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)]) {
        if (@available(iOS 13.0, *)) {
            NSLog(@"key: %@, value: %@", key, [colors[key] resolvedColorWithTraitCollection:self.traitCollection]);
        } else {
            // Fallback on earlier versions
            NSLog(@"key: %@, value: %@", key, colors[key]);
        }

    }

}


@end
