//
//  AppControl.h
//  ToDoList
//
//  Created by 叶孙松 on 14-1-2.
//  Copyright (c) 2014年 叶孙松. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppControl : NSObject{
    NSMutableArray *array;
}
@property (weak) IBOutlet NSTextField *textField;
- (IBAction)AddIt:(id)sender;
@property (weak) IBOutlet NSTableView *tableView;

@end
