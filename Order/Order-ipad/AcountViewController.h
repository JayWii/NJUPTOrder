//
//  AcountViewController.h
//  Order-ipad
//
//  Created by Jaywii 15/10/30..
//  Copyright (c) 2015年. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"

@interface AcountViewController : BaseViewController<UINavigationBarDelegate,NSXMLParserDelegate>

@property (weak, nonatomic) IBOutlet UINavigationBar *NavigationBar;
@property (weak, nonatomic) IBOutlet UIImageView *TopImage;
@property (weak, nonatomic) IBOutlet UILabel *AcountNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *VersionNameLabel;
@property (weak, nonatomic) IBOutlet UIButton *GoOutBtn;
- (IBAction)GoOut:(id)sender;

@property(strong,nonatomic)NSMutableData *webData;
@property(strong,nonatomic)NSMutableString *soapResults;
@property(strong,nonatomic)NSXMLParser *xmlParser;
@property(nonatomic)BOOL elementFound;
@property(strong,nonatomic)NSString *matchiingElemenr;
@property(strong,nonatomic)NSURLConnection *conn;
- (IBAction)GoMain:(id)sender;

@end
