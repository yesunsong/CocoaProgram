//
//  Person.h
//  RaiseMan
//
//  Created by 叶孙松 on 14-1-3.
//  Copyright (c) 2014年 叶孙松. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    NSString *personName;
    float expectedRaise;
}
@property(readwrite,copy)NSString *personName;
@property(readwrite,assign)float expectedRaise;

@end
