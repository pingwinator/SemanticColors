//
//  VLColorViewCell.h
//  SemanticColors_Example
//
//  Created by Vasyl Liutikov on 17.06.19.
//  Copyright © 2019 Vasyl Liutikov. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class VLBorderView;

@interface VLColorViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet VLBorderView *colorView;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *details;

@end

NS_ASSUME_NONNULL_END
