//
//  main.m
//  lottery
//
//  Created by 叶孙松 on 13-12-25.
//  Copyright (c) 2013年 叶孙松. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LotteryEntry.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//        NSMutableArray *_array=[[NSMutableArray alloc]init];
//        int i;
//        for (i=0; i<10; i++) {
//            NSNumber *newNumber=[[NSNumber alloc]initWithInt:i];
//            [_array addObject:newNumber];
//        }
//        
//        for (i=0; i<10; i++) {
//            NSNumber *numberToPrint=[_array objectAtIndex:i];
//            NSLog(@"The number at index %d is %@",i,numberToPrint);
//        }
        //************************************
        NSDate* now=[NSDate date];
        NSCalendar *cal=[NSCalendar currentCalendar];
        NSDateComponents* weekComponents=[[NSDateComponents alloc]init];
        
        srandom((unsigned)time(NULL));
        
        NSMutableArray *array=[[NSMutableArray alloc]init];
//        NSLog(@"first item=%@",[array objectAtIndex:0]);
        int i;
        for (i=0; i<20; i++) {
            [weekComponents setWeek:i];
            
            NSDate *iWeekFromNow;
            iWeekFromNow=[cal dateByAddingComponents:weekComponents toDate:now options:0];
           
            LotteryEntry *newEntry=[[LotteryEntry alloc]initWithEntryDate:iWeekFromNow];
            
            [array addObject:newEntry];
            
        }
        
        for (LotteryEntry *entryToPoint in array) {
            NSLog(@"%@",entryToPoint);
        }
        
    }
    return 0;
}