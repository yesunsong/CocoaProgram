//
//  AppDelegate.m
//  CreateDelegate
//
//  Created by 叶孙松 on 14-1-2.
//  Copyright (c) 2014年 叶孙松. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

-(NSSize)windowWillResize:(NSWindow*)sender toSize:(NSSize)frameSize{
    NSSize size=NSMakeSize(frameSize.width, frameSize.width*2);
    NSLog(@"mySize is %f wide and %f tall",size.width,size.height);
    return size;
}
@end