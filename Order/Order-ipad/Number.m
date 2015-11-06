//
//  Number.m
//  Order-ipad
//
//  Created by Jaywii 15/10/30.
//  Copyright (c) 2015年 . All rights reserved.
//

#import "Number.h"

@implementation Number
//判断是否为整形：
- (BOOL)isPureInt:(NSString*)string{
    NSScanner* scan = [NSScanner scannerWithString:string];
    int val;
    return [scan scanInt:&val] && [scan isAtEnd];
}
//判断是否为浮点形：
- (BOOL)isPureFloat:(NSString*)string{
    NSScanner* scan = [NSScanner scannerWithString:string];
    float val;
    return[scan scanFloat:&val] && [scan isAtEnd];
}
@end
