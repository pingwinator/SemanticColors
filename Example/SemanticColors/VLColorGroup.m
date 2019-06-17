//
//  VLColorGroup.m
//  SemanticColors_Example
//
//  Created by Vasyl Liutikov on 17.06.19.
//  Copyright © 2019 Vasyl Liutikov. All rights reserved.
//

#import "VLColorGroup.h"
@interface VLColorGroup ()
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSArray <VLColor *> *colors;

@end

@implementation VLColorGroup

- (instancetype)initWithName:(NSString *)name colors:(NSArray<VLColor *> *)colors
{
    self = [super init];
    if (self) {
        self.colors = colors;
        self.name = name;
    }
    return self;
}

+ (instancetype)groupWithName:(NSString *)name colors:(NSArray <VLColor *>*)colors
{
    return [[self alloc] initWithName:name colors:colors];
}

#pragma mark - NSCopying methods

- (id)copyWithZone:(NSZone *)zone
{
    return [[self.class alloc] initWithName:self.name colors:self.colors];
}
@end
