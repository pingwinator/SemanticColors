//
//  UIColor+SemanticColors.h
//  SemanticColors
//
//  Created by Vasyl Liutikov on 17.06.19.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (SemanticColors)

#pragma mark Gray colors
/* The numbered variations, systemGray2 through systemGray6, are grays which increasingly
 * trend away from systemGray and in the direction of systemBackgroundColor.
 *
 * In UIUserInterfaceStyleLight: systemGray1 is slightly lighter than systemGray.
 *                               systemGray2 is lighter than that, and so on.
 * In UIUserInterfaceStyleDark:  systemGray1 is slightly darker than systemGray.
 *                               systemGray2 is darker than that, and so on.
 */
@property (class, nonatomic, readonly) UIColor *safeSystemGray2Color         API_UNAVAILABLE(tvos, watchos);
@property (class, nonatomic, readonly) UIColor *safeSystemGray3Color         API_UNAVAILABLE(tvos, watchos);
@property (class, nonatomic, readonly) UIColor *safeSystemGray4Color         API_UNAVAILABLE(tvos, watchos);
@property (class, nonatomic, readonly) UIColor *safeSystemGray5Color         API_UNAVAILABLE(tvos, watchos);
@property (class, nonatomic, readonly) UIColor *safeSystemGray6Color         API_UNAVAILABLE(tvos, watchos);

#pragma mark Foreground colors

/* Foreground colors for static text and related elements.
 */
@property (class, nonatomic, readonly) UIColor *safeLabelColor               API_UNAVAILABLE(watchos);
@property (class, nonatomic, readonly) UIColor *safeSecondaryLabelColor      API_UNAVAILABLE(watchos);
@property (class, nonatomic, readonly) UIColor *safeTertiaryLabelColor       API_UNAVAILABLE(watchos);
@property (class, nonatomic, readonly) UIColor *safeQuaternaryLabelColor     API_UNAVAILABLE(watchos);

/* Foreground color for standard system links.
 */
@property (class, nonatomic, readonly) UIColor *safeLinkColor                API_UNAVAILABLE(watchos);

/* Foreground color for placeholder text in controls or text fields or text views.
 */
@property (class, nonatomic, readonly) UIColor *safePlaceholderTextColor     API_UNAVAILABLE(watchos);

/* Foreground colors for separators (thin border or divider lines).
 * `separatorColor` may be partially transparent, so it can go on top of any content.
 * `opaqueSeparatorColor` is intended to look similar, but is guaranteed to be opaque, so it will
 * completely cover anything behind it. Depending on the situation, you may need one or the other.
 */
@property (class, nonatomic, readonly) UIColor *safeSeparatorColor           API_UNAVAILABLE(watchos);
@property (class, nonatomic, readonly) UIColor *safeOpaqueSeparatorColor     API_UNAVAILABLE(watchos);

#pragma mark Background colors

/* We provide two design systems (also known as "stacks") for structuring an iOS app's backgrounds.
 *
 * Each stack has three "levels" of background colors. The first color is intended to be the
 * main background, farthest back. Secondary and tertiary colors are layered on top
 * of the main background, when appropriate.
 *
 * Inside of a discrete piece of UI, choose a stack, then use colors from that stack.
 * We do not recommend mixing and matching background colors between stacks.
 * The foreground colors above are designed to work in both stacks.
 *
 * 1. systemBackground
 *    Use this stack for views with standard table views, and designs which have a white
 *    primary background in light mode.
 */
@property (class, nonatomic, readonly) UIColor *safeSystemBackgroundColor                    API_UNAVAILABLE(tvos, watchos);
@property (class, nonatomic, readonly) UIColor *safeSecondarySystemBackgroundColor           API_UNAVAILABLE(tvos, watchos);
@property (class, nonatomic, readonly) UIColor *safeTertiarySystemBackgroundColor            API_UNAVAILABLE(tvos, watchos);

/* 2. systemGroupedBackground
 *    Use this stack for views with grouped content, such as grouped tables and
 *    platter-based designs. These are like grouped table views, but you may use these
 *    colors in places where a table view wouldn't make sense.
 */
@property (class, nonatomic, readonly) UIColor *safeSystemGroupedBackgroundColor             API_UNAVAILABLE(tvos, watchos);
@property (class, nonatomic, readonly) UIColor *safeSecondarySystemGroupedBackgroundColor    API_UNAVAILABLE(tvos, watchos);
@property (class, nonatomic, readonly) UIColor *safeTertiarySystemGroupedBackgroundColor     API_UNAVAILABLE(tvos, watchos);

#pragma mark Fill colors

/* Fill colors for UI elements.
 * These are meant to be used over the background colors, since their alpha component is less than 1.
 *
 * systemFillColor is appropriate for filling thin and small shapes.
 * Example: The track of a slider.
 */
@property (class, nonatomic, readonly) UIColor *safeSystemFillColor                          API_UNAVAILABLE(tvos, watchos);

/* secondarySystemFillColor is appropriate for filling medium-size shapes.
 * Example: The background of a switch.
 */
@property (class, nonatomic, readonly) UIColor *safeSecondarySystemFillColor                 API_UNAVAILABLE(tvos, watchos);

/* tertiarySystemFillColor is appropriate for filling large shapes.
 * Examples: Input fields, search bars, buttons.
 */
@property (class, nonatomic, readonly) UIColor *safeTertiarySystemFillColor                  API_UNAVAILABLE(tvos, watchos);

/* quaternarySystemFillColor is appropriate for filling large areas containing complex content.
 * Example: Expanded table cells.
 */
@property (class, nonatomic, readonly) UIColor *safeQuaternarySystemFillColor                API_UNAVAILABLE(tvos, watchos);

@end

NS_ASSUME_NONNULL_END
