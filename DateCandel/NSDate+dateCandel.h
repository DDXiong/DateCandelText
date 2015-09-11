//
//  NSDate+dateCandel.h
//  新浪
//
//  Created by tarena500 on 15/8/24.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (dateCandel)
-(BOOL)isToday;

-(BOOL)isYesterday;

-(BOOL)isThisYear;
//返回一个只有年月日的时间
-(NSDate*)dateWithYMD;
//获得与当前时间的差距
-(NSDateComponents*)deltaWithNow;
@end
