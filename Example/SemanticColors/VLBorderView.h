//
//  VLBorderView.h
//  SemanticColors_Example
//
//  Created by Vasyl Liutikov on 17.06.19.
//  Copyright © 2019 Vasyl Liutikov. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

NS_SWIFT_NAME(BorderView)
@interface VLBorderView : UIView

@property (nonatomic, assign) UIRectCorner corners;
@property (nonatomic, assign, readonly) CGSize cornersSize;

@end
NS_ASSUME_NONNULL_END
