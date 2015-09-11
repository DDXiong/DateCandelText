//
//  NSDate+dateCandel.m
//  新浪
//
//  Created by tarena500 on 15/8/24.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "NSDate+dateCandel.h"

@implementation NSDate (dateCandel)
-(BOOL)isToday{
    NSCalendar*calendar=[NSCalendar currentCalendar];
    int unit=NSCalendarUnitDay|NSCalendarUnitMonth|NSCalendarUnitYear;
    NSDateComponents*nowCmps=[calendar components:unit fromDate:[NSDate date]];

    NSDateComponents*selfCmps=[calendar components:unit fromDate:self];
   return  (selfCmps.year==nowCmps.year)&&(selfCmps.month==nowCmps.month)&&(selfCmps.day==nowCmps.day);
    
}
-(BOOL)isYesterday{
   NSDate*nowdate=[[NSDate date]dateWithYMD];
    NSDate*selfDate=[self dateWithYMD];
    NSCalendar*calendar=[NSCalendar currentCalendar];
    //获得时间差距
    NSDateComponents*cmps=[calendar components:NSCalendarUnitDay fromDate:selfDate toDate:nowdate options:0];
    return cmps.day==1;
}

-(NSDate*)dateWithYMD{
    NSDateFormatter*fmt=[[NSDateFormatter alloc]init];
fmt.dateFormat=@"yyyy-MM-dd";
    NSString*selfStr=[fmt stringFromDate:self];
    return [fmt dateFromString:selfStr];
}


-(BOOL)isThisYear{

    NSCalendar *calendar = [NSCalendar currentCalendar];
    int unit = NSCalendarUnitYear;
    
    // 1.获得当前时间的年月日
    NSDateComponents *nowCmps = [calendar components:unit fromDate:[NSDate date]];
    
    // 2.获得self的年月日
    NSDateComponents *selfCmps = [calendar components:unit fromDate:self];
    
    return nowCmps.year == selfCmps.year;

}


- (NSDateComponents *)deltaWithNow
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    int unit = NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    return [calendar components:unit fromDate:self toDate:[NSDate date] options:0];
}
@end
