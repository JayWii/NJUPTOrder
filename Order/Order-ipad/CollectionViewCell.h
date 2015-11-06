//
//  CollectionViewCell.h
//  Order-ipad
//
//  Created by Jaywii on 15/10/31.
//  Copyright (c) 2015年. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SAExpandableButton;

@interface CollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageview;
@property (weak, nonatomic) IBOutlet UILabel *GoodsName;
@property (weak, nonatomic) IBOutlet UILabel *GoodsNum;
@property (weak, nonatomic) IBOutlet UILabel *RealNum;
@property (weak, nonatomic) IBOutlet UIButton *OrderBtn;
@property (weak, nonatomic) IBOutlet UILabel *GoodsNum2Label;
@property (weak, nonatomic) IBOutlet UIButton *IconBtn;
@property (weak, nonatomic) IBOutlet UILabel *IDLabel;
//辣度选项的按钮
@property (strong, nonatomic) SAExpandableButton *customButton1;
- (IBAction)OrderGoods:(id)sender;
@end
