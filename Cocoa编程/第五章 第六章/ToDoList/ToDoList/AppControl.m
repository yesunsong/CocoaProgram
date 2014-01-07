//
//  AppControl.m
//  ToDoList
//
//  Created by 叶孙松 on 14-1-2.
//  Copyright (c) 2014年 叶孙松. All rights reserved.
//

#import "AppControl.h"

@implementation AppControl


-(id)init{
    self=[super init];
    if (self) {
        array=[[NSMutableArray alloc]init];
    }
    return self;
}

- (IBAction)AddIt:(id)sender {
    NSString *str=[_textField stringValue];
    NSLog(@"add task:%@",str);
    
    [array addObject:str];
    [_tableView reloadData];
}

-(NSInteger)numberOfRowsInTableView:(NSTableView*)tv{
    return (NSInteger)[array count];
}

-(id)tableView:(NSTableView*)tv objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    NSString *v=[array objectAtIndex:row];
    return v;
}


-(void)tableView:(NSTableView*)aTableView setObjectValue:(id)object forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    [array replaceObjectAtIndex:row withObject:object];
}

-(void)tableViewSelectionDidChange:(NSNotification *)notification{
    NSInteger row=[_tableView selectedRow];
    if(row==-1){
        return;
    }
    
    NSString *selectedMsg=[array objectAtIndex:row];
    NSLog(@"selected task:%@",selectedMsg);
}

-(void)awakeFromNib{
    [_textField becomeFirstResponder];
}
@end
