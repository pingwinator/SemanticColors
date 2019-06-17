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
#import "VLColor.h"
#import "VLColorGroup.h"

@interface VLColoursViewController ()
@property (nonatomic, strong) NSArray <VLColorGroup*> *colors;
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
    VLColorGroup *greyGroup = [VLColorGroup groupWithName:@"Grey" colors:@[
                                                                           [VLColor colorWithName:@"safeSystemGray2Color" color:UIColor.safeSystemGray2Color],
                                                                           [VLColor colorWithName:@"safeSystemGray3Color" color:UIColor.safeSystemGray3Color],
                                                                           [VLColor colorWithName:@"safeSystemGray4Color" color:UIColor.safeSystemGray4Color],
                                                                           [VLColor colorWithName:@"safeSystemGray5Color" color:UIColor.safeSystemGray5Color],
                                                                           [VLColor colorWithName:@"safeSystemGray6Color" color:UIColor.safeSystemGray6Color],
                                                                           ]
                               ];
    VLColorGroup *foregroundGroup = [VLColorGroup groupWithName:@"Foreground" colors:@[
                                                                           [VLColor colorWithName:@"safeLabelColor" color:UIColor.safeLabelColor],
                                                                           [VLColor colorWithName:@"safeSecondaryLabelColor" color:UIColor.safeSecondaryLabelColor],
                                                                           [VLColor colorWithName:@"safeTertiaryLabelColor" color:UIColor.safeTertiaryLabelColor],
                                                                           [VLColor colorWithName:@"safeQuaternaryLabelColor" color:UIColor.safeQuaternaryLabelColor],
                                                                           [VLColor colorWithName:@"safeLinkColor" color:UIColor.safeLinkColor],
                                                                           [VLColor colorWithName:@"safePlaceholderTextColor" color:UIColor.safePlaceholderTextColor],
                                                                           [VLColor colorWithName:@"safeSeparatorColor" color:UIColor.safeSeparatorColor],
                                                                           [VLColor colorWithName:@"safeOpaqueSeparatorColor" color:UIColor.safeOpaqueSeparatorColor],
                                                                           ]
                               ];
    VLColorGroup *backgroundGroup = [VLColorGroup groupWithName:@"Background" colors:@[
                                                                           [VLColor colorWithName:@"safeSystemBackgroundColor" color:UIColor.safeSystemBackgroundColor],
                                                                           [VLColor colorWithName:@"safeSecondarySystemBackgroundColor" color:UIColor.safeSecondarySystemBackgroundColor],
                                                                           [VLColor colorWithName:@"safeTertiarySystemBackgroundColor" color:UIColor.safeTertiarySystemBackgroundColor],
                                                                           [VLColor colorWithName:@"safeSystemGroupedBackgroundColor" color:UIColor.safeSystemGroupedBackgroundColor],
                                                                           [VLColor colorWithName:@"safeSecondarySystemGroupedBackgroundColor" color:UIColor.safeSecondarySystemGroupedBackgroundColor],
                                                                           [VLColor colorWithName:@"safeTertiarySystemGroupedBackgroundColor" color:UIColor.safeTertiarySystemGroupedBackgroundColor],
                                                                           ]
                               ];
    VLColorGroup *fillGroup = [VLColorGroup groupWithName:@"Fill" colors:@[
                                                                           [VLColor colorWithName:@"safeSystemFillColor" color:UIColor.safeSystemFillColor],
                                                                           [VLColor colorWithName:@"safeSecondarySystemFillColor" color:UIColor.safeSecondarySystemFillColor],
                                                                           [VLColor colorWithName:@"safeTertiarySystemFillColor" color:UIColor.safeTertiarySystemFillColor],
                                                                           [VLColor colorWithName:@"safeQuaternarySystemFillColor" color:UIColor.safeQuaternarySystemFillColor]
                                                                           ]
                               ];
    self.colors = @[greyGroup, foregroundGroup, backgroundGroup, fillGroup];
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

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return self.colors[section].name;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.colors.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.colors[section].colors.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    VLColorViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"VLColorViewCell" forIndexPath:indexPath];
    VLColor *vlcolor = self.colors[indexPath.section].colors[indexPath.row];
    NSString *key = vlcolor.name;
    UIColor *color = vlcolor.color;
    
    cell.title.text = key;
    cell.colorView.backgroundColor = color;
    
    CGFloat red = 0.0, green = 0.0, blue = 0.0, alpha = 0.0;
    [color getRed:&red green:&green blue:&blue alpha:&alpha];
    alpha = roundf(alpha * 100);
    NSString *details = [NSString stringWithFormat:@"RGBA: %@ %@ %@ %@%%", @(roundf(red*255)), @(roundf(green*255)), @(roundf(blue*255)), @(alpha)];
    cell.details.text = details;
    
    return cell;
}


@end
