//
//  CollectionViewCell.m
//  Order-ipad
//
//  Created by Jaywii on 15/10/31.
//  Copyright (c) 2015年. All rights reserved.
//

#import "CollectionViewCell.h"
#import "MainViewController.h"
#import "SAExpandableButton.h"

@implementation CollectionViewCell

-(id)initWithFrame:(CGRect)frame{
    
    self=[super initWithFrame:frame];
    if (self) {
        //初始化时加载collectionCell.xib文件
        NSArray *arrayOfViews=[[NSBundle mainBundle] loadNibNamed:@"CollectionViewCell" owner:self options:nil];
        
        //如果路径不存在，return nil
        if(arrayOfViews.count<1){
            return nil;
        }
        //如果xib中view不属于UICollectionViewCell类，return nil
        if(![[arrayOfViews objectAtIndex:0] isKindOfClass:[UICollectionViewCell class]]){
            return nil;
        }
        //加载nib
        self=[arrayOfViews objectAtIndex:0];
        _customButton1= [[SAExpandableButton alloc]initWithFrame:CGRectMake(122, 162, 30, 30)];
        _customButton1.expandDirection = SAExpandDirectionLeft;
        _customButton1.numberOfButtons = 3;
        _customButton1.selectedIndex = 2;
        
        // 按钮标示符
        _customButton1.tag = 0;
        
        // 创建button1， button2， button3 三个按钮
        
        UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
        [button1 setTitle:@"微辣" forState:UIControlStateNormal];
        [button1 setTintColor:[UIColor redColor]];
        
        UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
        [button2 setTitle:@"中辣" forState:UIControlStateNormal];
        [button2 setTintColor:[UIColor redColor]];
        
        UIButton *button3 = [UIButton buttonWithType:UIButtonTypeSystem];
        [button3 setTitle:@"超辣" forState:UIControlStateNormal];
        [button3 setTintColor:[UIColor redColor]];
        
        _customButton1.buttons = [NSArray arrayWithObjects:button1,button2,button3, nil];
        
        [self  addSubview:_customButton1];
        

    }
    return self;
}
//点击点菜时回调

- (IBAction)OrderGoods:(id)sender {
    NSUserDefaults *ud=[NSUserDefaults standardUserDefaults];
    NSDictionary *dishes=@{@"id":self.IDLabel.text, @"name":self.GoodsName.text, @"acountnum":self.GoodsNum2Label.text,@"ladu":[self.customButton1.buttons[self.customButton1.selectedIndex]  currentTitle]};
    [ud setObject:dishes forKey:@"dishes"];

    self.IconBtn.alpha=1;
    [self addSubview:self.IconBtn];
}


@end
