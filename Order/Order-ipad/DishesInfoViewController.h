//
//  DishesInfoViewController.h
//  Order-ipad
//
//  Created by Jaywii 15/10/30..
//  Copyright (c) 2015年. All rights reserved.
// 选桌的界面


#import <UIKit/UIKit.h>
#import "BaseViewController.h"

@interface DishesInfoViewController : BaseViewController
- (IBAction)GoMain:(id)sender;
@property (weak, nonatomic) IBOutlet UITextView *DishesDescript;
@property (weak, nonatomic) IBOutlet UIImageView *Imageview;
@property (weak, nonatomic) IBOutlet UILabel *TitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *PriceLabel;
@property (weak, nonatomic) IBOutlet UILabel *TagLabel;

@end
