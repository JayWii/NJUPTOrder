//
//  MainViewController.h
//  Order-ipad
//
//  Created by Jaywii 15/10/30..
//  Copyright (c) 2015年. All rights reserved.
// 主界面

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
#import "MBProgressHUD.h"

@interface MainViewController : BaseViewController<UICollectionViewDelegate,UICollectionViewDataSource,UITableViewDataSource,UITableViewDelegate,UIAlertViewDelegate,UIActionSheetDelegate,MBProgressHUDDelegate,UIAlertViewDelegate>{
    MBProgressHUD *HUD;
}
@property (weak, nonatomic) IBOutlet UICollectionView *collectionview;
@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property (weak, nonatomic) IBOutlet UILabel *NumLabel;
@property (weak, nonatomic) IBOutlet UILabel *SumLabel;
@property (weak, nonatomic) IBOutlet UILabel *SumTitleLabel;
@property (weak, nonatomic) IBOutlet UIButton *DeskNumBtn;
@property (weak, nonatomic) IBOutlet UIButton *AcountNameBtn;
@property (weak, nonatomic) IBOutlet UILabel *RestaurantNameLabel;
@property (weak, nonatomic) IBOutlet UIButton *OrderBtn;
@property (weak, nonatomic) IBOutlet UIView *RightView;
@property (weak, nonatomic) IBOutlet UIView *NameView;
@property (weak, nonatomic) IBOutlet UIView *ListView;
@property (weak, nonatomic) IBOutlet UIView *CostView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

- (IBAction)GetDeskInfo:(id)sender;
- (IBAction)GetAcountInfo:(id)sender;
- (IBAction)Order:(id)sender;//下单
- (IBAction)GetDishes:(id)sender;
- (IBAction)CheckOut:(id)sender;

@property(nonatomic)NSMutableArray *tableNames;
@property(nonatomic)NSMutableArray *OrderAll;

@property(nonatomic,strong)NSTimer *timer;

@property(strong,nonatomic)NSMutableData *webData;
@property(strong,nonatomic)NSMutableString *soapResults;
@property(strong,nonatomic)NSXMLParser *xmlParser;
@property(nonatomic)BOOL elementFound;
@property(strong,nonatomic)NSString *matchiingElemenr;
@property(strong,nonatomic)NSURLConnection *conn;
@end
