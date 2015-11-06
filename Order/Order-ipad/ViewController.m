//
//  ViewController.m
//  Order-ipad
//
//   Created by Jaywii 15/10/30.
//  Copyright (c) 2015年 . All rights reserved.
//

#import "ViewController.h"
#import "UIImage.h"
#import "CRNavigationBar.h"
#import "CRNavigationController.h"
#import "DeviceInfo.h"
#import <unistd.h>
#import "MBProgressHUD+MJ.h"

@interface ViewController (){
    long long expectedLength;
    long long currentLength;
}
@property(nonatomic)int isDone;
@end

@implementation ViewController{
    int isTranformWifi;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.UserNameText.delegate=self;
    self.PassWordText.delegate=self;
    
    UIImageView *UserNameView=[[UIImageView alloc] initWithImage:[[UIImage imageNamed:@"8-1.png"] TransformtoSize:CGSizeMake(35, 35)]];
    UserNameView.frame=CGRectMake(15, 500, 35, 35);
    
    UserNameView.backgroundColor=[UIColor colorWithRed:238.0f/255.0f green:238.0f/255.0f blue:238.0f/255.0f alpha:1.0];
    
    self.UserNameText.leftView=UserNameView;
    
    self.UserNameText.leftViewMode=UITextFieldViewModeAlways;
    
    self.UserNameText.clearButtonMode=UITextFieldViewModeAlways;
    
    UIImageView *PassWdView=[[UIImageView alloc] initWithImage:[[UIImage imageNamed:@"8-2.png"] TransformtoSize:CGSizeMake(35, 35)]];
    
    PassWdView.frame=CGRectMake(15, 500, 35, 35);
    
    PassWdView.backgroundColor=[UIColor colorWithRed:238.0f/255.0f green:238.0f/255.0f blue:238.0f/255.0f alpha:1.0];
    
    self.PassWordText.leftView=PassWdView;
    
    self.PassWordText.leftViewMode=UITextFieldViewModeAlways;
    
    self.UserNameText.clearButtonMode=UITextFieldViewModeAlways;
    
    self.UserNameText.layer.masksToBounds=YES;
    
    self.UserNameText.layer.cornerRadius=8;

    self.PassWordText.layer.masksToBounds=YES;
    
    self.PassWordText.layer.cornerRadius=8;

    self.TopImage.layer.masksToBounds=YES;
    
    self.TopImage.layer.cornerRadius=50;

     [self.view addSubview:self.TopImage];

    self.NavigationBar.translucent=NO;

    self.isDone=1;
    isTranformWifi=0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
   
    if (textField.tag==1) {
        //选择UserNameText
//        NSUserDefaults *ud=[NSUserDefaults standardUserDefaults];
//        NSMutableArray *loginlist=[ud objectForKey:@"LoginList"];
        NSMutableString *userName=[self.UserNameText.text mutableCopy];
        [userName replaceCharactersInRange:range withString:string];
  


        NSMutableString *passwd=[self.PassWordText.text mutableCopy];
        if (userName.length==0||passwd.length==0) {
            self.LoginBtn.enabled=NO;
        }else{
            self.LoginBtn.enabled=YES;
        }
    }else if(textField.tag==2){
        //选择PassWordText
       
        NSMutableString *UserName=[self.UserNameText.text mutableCopy];
               NSMutableString *PassWd=[self.PassWordText.text mutableCopy];
        [PassWd replaceCharactersInRange:range withString:string];
        if (UserName.length==0||PassWd.length==0) {
            self.LoginBtn.enabled=NO;
            
        }else{
            self.LoginBtn.enabled=YES;
        }
    }
    return YES;
}
-(BOOL)textFieldShouldClear:(UITextField *)textField{
    self.LoginBtn.enabled=NO;
    return YES;
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    [self.UserNameText resignFirstResponder];
    [self.PassWordText resignFirstResponder];
}
//点击登陆时会调用这个方法

- (IBAction)Login:(id)sender {

    //初始化首页数据
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setObject:self.UserNameText.text forKey:@"UserName"];
    [ud setObject:self.PassWordText.text forKey:@"Passwd"];
    [ud setObject:@"1" forKey:@"LogID"];
    [ud setObject:@"1" forKey:@"siteuserid"];
    [ud setObject:@"第八组成员" forKey:@"displayname"];
    [ud setObject:@"njuptB13041308@gmail.com" forKey:@"alipayaccount"];
    [ud setObject:@"邮苑小吃" forKey:@"company"];
    [ud setObject:@"八号桌" forKey:@"desknumber"];
    NSArray *classlist= @[@{@"classid":@"4498",@"classname":@"主食"},
                          @{@"classid":@"2017",@"classname":@"凉菜"},
                          @{@"classid":@"2016",@"classname":@"套餐"},
                          @{@"classid":@"2015",@"classname":@"米饭"}];

    [ud setObject:classlist forKey:@"classlist"];


    //菜品信息
    NSArray *foodlist=@[@{@"classid":@"4498",
                          @"descrip":@"梅菜扣肉吃了不腻，吃了不胖。。。",
                          @"id":@"3095",
                          @"picname":@"img_04.jpg",
                          @"price":@"30",
                          @"tags":@"微辣",
                          @"title":@"梅菜扣肉"},

                        @{@"classid":@"2015",
                          @"descrip":@"东北大米饭，又香又好吃~~",
                          @"id":@"3186",
                          @"picname":@"img_09.jpg",
                          @"price":@"2",
                          @"tags":@"",
                          @"title":@"米饭"},

                        @{@"classid":@"4498",
                          @"descrip":@"正宗麻婆豆腐，你值得拥有！！！",
                          @"id":@"3096",
                          @"picname":@"img_06.jpg",
                          @"price":@"30",
                          @"tags":@"微辣",
                          @"title":@"麻婆豆腐"},
                        @{@"classid":@"4498",
                          @"descrip":@"好吃不过饺子！！！！",
                          @"id":@"30970",
                          @"picname":@"img_05.jpg",
                          @"price":@"20",
                          @"tags":@"",
                          @"title":@"东北大饺子"},

                        @{@"classid":@"4498",
                          @"descrip":@"好吃，很好吃，非常好吃，超级超级好吃",
                          @"id":@"7454",
                          @"picname":@"img_07.jpg",
                          @"price":@"15",
                          @"tags":@"微辣",
                          @"title":@"凉拌豆芽"},

                        @{@"classid":@"2017",
                          @"descrip":@"好吃，很好吃，非常好吃，超级超级好吃",
                          @"id":@"7444",
                          @"picname":@"img_07.jpg",
                          @"price":@"15",
                          @"tags":@"微辣",
                          @"title":@"凉拌豆芽"},

                        @{@"classid":@"4498",
                          @"descrip":@"白萝卜:100g 芹菜:50g 红椒:50g 李锦记纯香芝麻油:1 ",
                          @"id":@"7455",
                          @"picname":@"3.jpg",
                          @"price":@"15",
                          @"tags":@"凉拌",
                          @"title":@"凉拌三丝"},

                        @{@"classid":@"2017",
                          @"descrip":@"白萝卜:100g 芹菜:50g 红椒:50g 李锦记纯香芝麻油:1 ",
                          @"id":@"7111",
                          @"picname":@"3.jpg",
                          @"price":@"15",
                          @"tags":@"凉拌",
                          @"title":@"凉拌三丝"},

                        @{@"classid":@"4498",
                          @"descrip":@"选用净仔公鸡肉为主料",
                          @"id":@"3091",
                          @"picname":@"1.jpg",
                          @"price":@"30",
                          @"tags":@"偏辣",
                          @"title":@"宫爆鸡丁"},

                        @{@"classid":@"2016",
                          @"descrip":@"大套餐铁板鱿鱼+宫保鸡丁+饭+饮料,只要88，只要88，只要88！",
                          @"id":@"7456",
                          @"picname":@"img_00.jpg",
                          @"price":@"88",
                          @"tags":@"超好吃",
                          @"title":@"聚划算套餐"},

                        ];
    
    [ud setObject:foodlist forKey:@"foodlist"];
    
    UIStoryboard * storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc= [storyBoard instantiateViewControllerWithIdentifier:@"mainview"];
    ///////通过storyboard来实例

    HUD=[[MBProgressHUD alloc]initWithView:self.view];
    [self.view addSubview:HUD];
    HUD.delegate=self;

    if ([self.UserNameText.text isEqualToString:@"B13041308"] && [self.PassWordText.text isEqualToString:@"123"])
    {
            HUD.labelText=@"正在登录中......";
            [HUD showWhileExecuting:@selector(myTask) onTarget:self withObject:nil animated:YES];
            [self presentViewController:vc animated:YES completion:nil];
            UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"登录" message:@"签到成功" delegate:self cancelButtonTitle:@"确定" otherButtonTitles: nil];
            [alert show];
    }else{
        HUD.labelText=@"账号或密码错误";
        
        [HUD showWhileExecuting:@selector(myTask) onTarget:self withObject:nil animated:YES];
        
    }
  
}
- (void)myTask {
    // Do something usefull in here instead of sleeping ...
    sleep(1);
}

- (IBAction)Up:(id)sender {
    [self slideFrame:YES];
}

- (IBAction)Down:(id)sender {
    [self slideFrame:NO];
}

-(void)slideFrame:(BOOL) up{
    const int movementDistance=180;
    const float movementDuration=0.3f;
    
    int movement=(up ? -movementDistance:movementDistance);
    
    [UIView beginAnimations:@"anim" context:nil];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:movementDuration];
    self.view.frame=CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}

@end
