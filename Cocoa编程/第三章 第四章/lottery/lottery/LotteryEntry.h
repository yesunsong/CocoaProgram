//
//  LotteryEntry.h
//  lottery
//
//  Created by 叶孙松 on 13-12-27.
//  Copyright (c) 2013年 叶孙松. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LotteryEntry : NSObject{
    NSDate *entryDate;
    int firstNumber;
    int secondNumber;
}

-(id)initWithEntryDate:(NSDate*)theDate;

-(void)setEntryDate:(NSDate *)date;
-(NSDate*)entryDate;

-(int)firstNumber;
-(int)secondNumber;
@end