//
//  VLColorViewCell.m
//  SemanticColors_Example
//
//  Created by Vasyl Liutikov on 17.06.19.
//  Copyright © 2019 Vasyl Liutikov. All rights reserved.
//

#import "VLColorViewCell.h"
#import "UIColor+SemanticColors.h"
#import "VLBorderView.h"

@implementation VLColorViewCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.title.textColor = UIColor.safeLabelColor;
    self.details.textColor = UIColor.safeSecondaryLabelColor;
    self.contentView.backgroundColor = UIColor.safeSystemBackgroundColor;
    self.colorView.corners = UIRectCornerAllCorners;
//    self.colorView
}

@end
