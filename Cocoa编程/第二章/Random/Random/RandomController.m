//
//  RandomController.m
//  Random
//
//  Created by 叶孙松 on 13-12-24.
//  Copyright (c) 2013年 叶孙松. All rights reserved.
//

#import "RandomController.h"

@implementation RandomController

-(void)awakeFromNib{
    NSDate *now=[NSDate date];
    [textField setObjectValue:now];
}

-(IBAction)generate:(id)sender{
    int generated=(int)(random()%100)+1;
    [textField setIntegerValue:generated];
}

-(IBAction)seed:(id)sender{
    srandom((unsigned)time(NULL));
    [textField setStringValue:@"Generator"];
}
@end
