//
//  ViewController.h
//  Order-ipad
//
//   Created by Jaywii 15/10/30.
//  Copyright (c) 2015年. All rights reserved.
//用户登陆界面


#import <UIKit/UIKit.h>
#import "BaseViewController.h"
#import "MBProgressHUD.h"

@interface ViewController : BaseViewController<UINavigationBarDelegate,UITextFieldDelegate,UIAlertViewDelegate,MBProgressHUDDelegate,UIAlertViewDelegate>
{
    MBProgressHUD *HUD;
}
//账号
@property (weak, nonatomic) IBOutlet UITextField *UserNameText;
//密码
@property (weak, nonatomic) IBOutlet UITextField *PassWordText;

@property (weak, nonatomic) IBOutlet UINavigationBar *NavigationBar;
@property (weak, nonatomic) IBOutlet UIButton *LoginBtn;
- (IBAction)Login:(id)sender;
- (IBAction)Up:(id)sender;
- (IBAction)Down:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *TopImage;



@end

