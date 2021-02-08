//
//  YJTools.m
//  MyApp
//
//  Created by Apple on 2021/2/8.
//  Copyright © 2021 Apple. All rights reserved.
//

#import "YJTools.h"

@implementation YJTools

+ (NSInteger)getDaysIntervalFromLoveToNow {
    NSTimeInterval nowTimestamp = [[NSDate date] timeIntervalSince1970];
    NSInteger timeInterval = nowTimestamp - LoveTimestamp;
    NSInteger days = (timeInterval/86400) + 1;
    return days;
}

@end
