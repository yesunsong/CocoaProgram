//
//  LotteryEntry.m
//  lottery
//
//  Created by 叶孙松 on 13-12-27.
//  Copyright (c) 2013年 叶孙松. All rights reserved.
//

#import "LotteryEntry.h"

@implementation LotteryEntry

-(id)init{
    return [self initWithEntryDate:[NSDate date]];
}
//指派初始化器
-(id)initWithEntryDate:(NSDate *)theDate{
    self=[super init];
    if (self) {
//        NSAssert(theDate!=nil, @"Arguement must be non-nil");
        entryDate=theDate;
        firstNumber=((int)(random()%100))+1;
        secondNumber=((int)(random()%100))+1;
    }
    return self;
}

-(void)setEntryDate:(NSDate *)date{
    entryDate=date;
}

-(NSDate*)entryDate{
    return entryDate;
}

-(int)firstNumber{
    return firstNumber;
}

-(int)secondNumber{
    return secondNumber;
}

-(NSString *)description{
    NSDateFormatter *df=[[NSDateFormatter alloc] init];
    [df setTimeStyle:NSDateFormatterNoStyle];
    [df setDateStyle:NSDateFormatterMediumStyle];
    [df setDateFormat:@"yyyy MMM dd HH:mm::ss"];
    
    NSString *result;
//    result=[[NSString alloc]initWithFormat:@"%@=%d and %d",[df stringFromDate:entryDate],firstNumber,secondNumber];
    
    result=[NSString stringWithFormat:@"%@=%d and %d",[df stringFromDate:entryDate],firstNumber,secondNumber];
    
//    [result release];
    return result;
}

-(void)dealloc{
     NSLog(@"deallocating %@",self);
}

@end