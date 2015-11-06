//
//  Device.m
//  Cashier
//
//   Created by Jaywii 15/10/30.
//  Copyright (c) 2015年. All rights reserved.
//

#import "DeviceInfo.h"

@implementation DeviceInfo

//获得UUID

+(NSString *)getIphoneUUID{
    return [[NSUUID UUID] UUIDString];
}

@end
