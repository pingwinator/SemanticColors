//
//  UIColor+SemanticColors.m
//  SemanticColors
//
//  Created by Vasyl Liutikov on 17.06.19.
//

#import "UIColor+SemanticColors.h"

@implementation UIColor (SemanticColors)

#pragma mark Gray colors

+ (UIColor *)safeSystemGray2Color
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.systemGray2Color;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithRed:0.682353f green:0.682353f blue:0.698039f alpha:1];
#ifdef __IPHONE_13_0
    }
#endif
}

+ (UIColor *)safeSystemGray3Color
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.systemGray3Color;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithRed:0.780392f green:0.780392f blue:0.8f alpha:1];
#ifdef __IPHONE_13_0
    }
#endif
}

+ (UIColor *)safeSystemGray4Color
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.systemGray4Color;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithRed:0.819608f green:0.819608f blue:0.839216f alpha:1];
#ifdef __IPHONE_13_0
    }
#endif
}

+ (UIColor *)safeSystemGray5Color
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.systemGray5Color;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithRed:0.898039f green:0.898039f blue:0.917647f alpha:1];
#ifdef __IPHONE_13_0
    }
#endif
}

+ (UIColor *)safeSystemGray6Color
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.systemGray6Color;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithRed:0.94902f green:0.94902f blue:0.968627f alpha:1];
#ifdef __IPHONE_13_0
    }
#endif
}


@end

