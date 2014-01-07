//
//  AppController.h
//  CountCharacters
//
//  Created by 叶孙松 on 13-12-29.
//  Copyright (c) 2013年 叶孙松. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppController : NSObject

@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSTextFieldCell *label;
- (IBAction)countIt:(id)sender;

@end