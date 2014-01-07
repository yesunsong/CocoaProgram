//
//  Person.m
//  RaiseMan
//
//  Created by 叶孙松 on 14-1-3.
//  Copyright (c) 2014年 叶孙松. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize personName;
@synthesize expectedRaise;

- (id)init{
    self = [super init];
    if (self) {
        expectedRaise=0.05;
        personName=@"New Person";
    }
    return self;
}

@end
