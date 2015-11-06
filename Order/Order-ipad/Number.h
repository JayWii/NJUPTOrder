//
//  Number.h
//  Order-ipad
//
//  Created by Jaywii 15/10/30.
//  Copyright (c). All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Number : NSObject
//判断是否为整形：
- (BOOL)isPureInt:(NSString*)string;
//判断是否为浮点形：
- (BOOL)isPureFloat:(NSString*)string;

@end
