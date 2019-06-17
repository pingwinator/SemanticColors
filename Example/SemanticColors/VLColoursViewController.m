//
//  VLColoursViewController.m
//  SemanticColors_Example
//
//  Created by Vasyl Liutikov on 17.06.19.
//  Copyright © 2019 Vasyl Liutikov. All rights reserved.
//

#import "VLColoursViewController.h"
#import "UIColor+SemanticColors.h"
#import "VLColorViewCell.h"
#import "VLBorderView.h"

@interface VLColoursViewController ()
@property (nonatomic, strong) NSDictionary <NSString*, UIColor*>*colors;
@property (nonatomic, strong) NSArray <NSString*> *colorsKeys;
@end

@implementation VLColoursViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Semantic colours";
    self.tableView.separatorColor = UIColor.safeSeparatorColor;
    self.tableView.backgroundColor = UIColor.safeSystemGroupedBackgroundColor;
    [self setupColours];
}

- (void)setupColours
{
    self.colors = @{
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
    self.colorsKeys = self.colors.allKeys;
    [self.tableView reloadData];
}

- (void)traitCollectionDidChange:(UITraitCollection *)previousTraitCollection
{
    [super traitCollectionDidChange:previousTraitCollection];
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        if ([self.traitCollection hasDifferentColorAppearanceComparedToTraitCollection:previousTraitCollection]) {
            [self setupColours];
        }
    }
#endif
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.colorsKeys.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    VLColorViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"VLColorViewCell" forIndexPath:indexPath];
    NSString *key = self.colorsKeys[indexPath.row];
    UIColor *color = self.colors[key];
    
    cell.title.text = key;
    cell.colorView.backgroundColor = color;
    
    CGFloat red = 0.0, green = 0.0, blue = 0.0, alpha = 0.0;
    [color getRed:&red green:&green blue:&blue alpha:&alpha];
    NSString *details = [NSString stringWithFormat:@"RGBA: %@ %@ %@ %@", @(red*255), @(green*255), @(blue*255), @(alpha)];
    cell.details.text = details;
    
    return cell;
}


@end
