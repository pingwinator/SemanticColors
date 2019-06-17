//
//  VLColor.h
//  SemanticColors_Example
//
//  Created by Vasyl Liutikov on 17.06.19.
//  Copyright © 2019 Vasyl Liutikov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface VLColor : NSObject <NSCopying>
@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly, copy) UIColor *color;

+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

+ (instancetype)colorWithName:(NSString *)name color:(UIColor *)color;
- (instancetype)initWithName:(NSString *)name color:(UIColor *)color NS_DESIGNATED_INITIALIZER;
@end

NS_ASSUME_NONNULL_END
