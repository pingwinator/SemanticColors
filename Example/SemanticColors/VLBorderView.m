//
//  VLBorderView.m
//  SemanticColors_Example
//
//  Created by Vasyl Liutikov on 17.06.19.
//  Copyright © 2019 Vasyl Liutikov. All rights reserved.
//

#import "VLBorderView.h"
#import <QuartzCore/QuartzCore.h>

@interface VLBorderView ()

@property (nonatomic, strong)  CAShapeLayer *maskLayer;
@property (nonatomic, strong)  CAShapeLayer *borderLayer;

@end

@implementation VLBorderView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setupLayers];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self setupLayers];
    }
    return self;
}

- (CGSize)cornersSize
{
    return CGSizeMake(4, 4);
}

- (void)setupLayers
{
    if (self.borderLayer) {
        [self.borderLayer removeFromSuperlayer];
        self.borderLayer = nil;
    }
    UIBezierPath *cornersPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds  byRoundingCorners:self.corners cornerRadii:self.cornersSize];
    //Create a new layer to use as a mask
    self.maskLayer = [CAShapeLayer layer];
    self.maskLayer.path = cornersPath.CGPath;
    self.maskLayer.frame = self.bounds;
    
    self.layer.mask = self.maskLayer;
    
    //Border Layer
    self.borderLayer = [CAShapeLayer layer];
    self.borderLayer.strokeColor = UIColor.lightGrayColor.CGColor;
    self.borderLayer.lineWidth = 1.0 / [UIScreen mainScreen].scale;
    self.borderLayer.fillColor = UIColor.clearColor.CGColor;
    self.borderLayer.path = cornersPath.CGPath;
    self.borderLayer.frame = self.bounds;
    [self.layer addSublayer:self.borderLayer];
}

- (void)setCorners:(UIRectCorner)corners
{
    _corners = corners;
    [self setupLayers];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    [self setupLayers];
}

@end
