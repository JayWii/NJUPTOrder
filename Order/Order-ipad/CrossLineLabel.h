//
//  CrossLineLabel.h
//  Order-ipad
//
//   Created by Jaywii 15/10/30.
//  Copyright (c) 2015年. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CrossLineLabel : UILabel

@property (assign, nonatomic) BOOL strikeThroughEnabled; // 是否画线

@property (strong, nonatomic) UIColor *strikeThroughColor; // 画线颜色
@end
