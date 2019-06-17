//
//  VLColor.m
//  SemanticColors_Example
//
//  Created by Vasyl Liutikov on 17.06.19.
//  Copyright © 2019 Vasyl Liutikov. All rights reserved.
//

#import "VLColor.h"

@interface VLColor ()
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) UIColor *color;
@end

@implementation VLColor

- (instancetype)initWithName:(NSString *)name color:(UIColor *)color
{
    self = [super init];
    if (self) {
        self.color = color;
        self.name = name;
    }
    return self;
}

+ (instancetype)colorWithName:(NSString *)name color:(UIColor *)color {
    return [[self alloc] initWithName:name color:color];
}


#pragma mark - NSCopying methods

- (id)copyWithZone:(NSZone *)zone
{
    return [[self.class alloc] initWithName:self.name color:self.color];
}

@end
