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

#pragma mark Foreground colors

+ (UIColor *)safeLabelColor
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.labelColor;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithWhite:0.f alpha:1];
#ifdef __IPHONE_13_0
    }
#endif
}

+ (UIColor *)safeSecondaryLabelColor
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.secondaryLabelColor;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithRed:0.235294f green:0.235294f blue:0.262745f alpha:0.6f];
#ifdef __IPHONE_13_0
    }
#endif
}

+ (UIColor *)safeTertiaryLabelColor
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.tertiaryLabelColor;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithRed:0.235294f green:0.235294f blue:0.262745f alpha:0.3f];
#ifdef __IPHONE_13_0
    }
#endif
}

+ (UIColor *)safeQuaternaryLabelColor
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.quaternaryLabelColor;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithRed:0.235294f green:0.235294f blue:0.262745f alpha:0.18f];
#ifdef __IPHONE_13_0
    }
#endif
}

+ (UIColor *)safeLinkColor
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.linkColor;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithRed:0.f green:0.478431f blue:1.f alpha:1];
#ifdef __IPHONE_13_0
    }
#endif
}

+ (UIColor *)safePlaceholderTextColor
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.placeholderTextColor;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithRed:0.235294f green:0.235294f blue:0.262745f alpha:0.3f];
#ifdef __IPHONE_13_0
    }
#endif
}

+ (UIColor *)safeSeparatorColor
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.separatorColor;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithRed:0.235294f green:0.235294f blue:0.262745f alpha:0.29];
#ifdef __IPHONE_13_0
    }
#endif
}

+ (UIColor *)safeOpaqueSeparatorColor
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.opaqueSeparatorColor;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithRed:0.776471f green:0.776471f blue:0.784314f alpha:1];
#ifdef __IPHONE_13_0
    }
#endif
}

#pragma mark Background colors

+ (UIColor *)safeSystemBackgroundColor
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.systemBackgroundColor;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithWhite:1.f alpha:1.f];
#ifdef __IPHONE_13_0
    }
#endif
}

+ (UIColor *)safeSecondarySystemBackgroundColor
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.secondarySystemBackgroundColor;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithRed:0.94902f green:0.94902f blue:0.968627f alpha:1];
#ifdef __IPHONE_13_0
    }
#endif
}

+ (UIColor *)safeTertiarySystemBackgroundColor
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.tertiarySystemBackgroundColor;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithWhite:1.f alpha:1];
#ifdef __IPHONE_13_0
    }
#endif
}

+ (UIColor *)safeSystemGroupedBackgroundColor
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.systemGroupedBackgroundColor;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithRed:0.94902f green:0.94902f blue:0.968627f alpha:1];
#ifdef __IPHONE_13_0
    }
#endif
}

+ (UIColor *)safeSecondarySystemGroupedBackgroundColor
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.secondarySystemGroupedBackgroundColor;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithWhite:1.f alpha:1.f];
#ifdef __IPHONE_13_0
    }
#endif
}

+ (UIColor *)safeTertiarySystemGroupedBackgroundColor
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.tertiarySystemGroupedBackgroundColor;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithRed:0.94902f green:0.94902f blue:0.968627f alpha:1];
#ifdef __IPHONE_13_0
    }
#endif
}

#pragma mark Fill colors

+ (UIColor *)safeSystemFillColor
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.systemFillColor;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithRed:0.470588f green:0.470588f blue:0.501961f alpha:0.2f];
#ifdef __IPHONE_13_0
    }
#endif
}

+ (UIColor *)safeSecondarySystemFillColor
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.secondarySystemFillColor;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithRed:0.470588f green:0.470588f blue:0.501961f alpha:0.16f];
#ifdef __IPHONE_13_0
    }
#endif
}

+ (UIColor *)safeTertiarySystemFillColor
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.tertiarySystemFillColor;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithRed:0.462745f green:0.462745f blue:0.501961f alpha:0.12f];
#ifdef __IPHONE_13_0
    }
#endif
}

+ (UIColor *)safeQuaternarySystemFillColor
{
#ifdef __IPHONE_13_0
    if (@available(iOS 13.0, *)) {
        return UIColor.quaternarySystemFillColor;
    } else {
#endif
        // Fallback on earlier versions
        return [UIColor colorWithRed:0.454902f green:0.454902f blue:0.501961f alpha:0.08f];
#ifdef __IPHONE_13_0
    }
#endif
}

@end



