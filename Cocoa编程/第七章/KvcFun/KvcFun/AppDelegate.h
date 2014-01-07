//
//  AppDelegate.h
//  KvcFun
//
//  Created by 叶孙松 on 14-1-3.
//  Copyright (c) 2014年 叶孙松. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>{
    int fido;
}

@property(readwrite,assign)int fido;
//-(int) fido;
//-(void)setFido:(int)x;
@property (assign) IBOutlet NSWindow *window;
- (IBAction)incrementFido:(id)sender;

@end
