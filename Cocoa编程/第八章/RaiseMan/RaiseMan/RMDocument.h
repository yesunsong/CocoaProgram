//
//  RMDocument.h
//  RaiseMan
//
//  Created by 叶孙松 on 14-1-3.
//  Copyright (c) 2014年 叶孙松. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface RMDocument : NSDocument{
    NSMutableArray *employees;
}
-(void)setEmployees:(NSMutableArray*)a;
@end
