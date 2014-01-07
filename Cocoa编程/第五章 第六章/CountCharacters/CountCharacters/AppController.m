//
//  AppController.m
//  CountCharacters
//
//  Created by 叶孙松 on 13-12-29.
//  Copyright (c) 2013年 叶孙松. All rights reserved.
//

#import "AppController.h"

@implementation AppController

- (IBAction)countIt:(id)sender {
    NSString *string=[_textField stringValue];
    NSInteger length=[string length];    ;
    [_label setStringValue:[NSString stringWithFormat:@"%@ has %ld characters.",string,(long)length]];
}
@end