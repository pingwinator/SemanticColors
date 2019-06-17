//
//  VLColorGroup.h
//  SemanticColors_Example
//
//  Created by Vasyl Liutikov on 17.06.19.
//  Copyright © 2019 Vasyl Liutikov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class VLColor;
@interface VLColorGroup : NSObject <NSCopying>
@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly, copy) NSArray <VLColor *> *colors;

+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

+ (instancetype)groupWithName:(NSString *)name colors:(NSArray <VLColor *>*)colors;
- (instancetype)initWithName:(NSString *)name colors:(NSArray <VLColor *>*)colors NS_DESIGNATED_INITIALIZER;
@end

NS_ASSUME_NONNULL_END
