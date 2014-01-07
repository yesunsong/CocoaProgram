//
//  AppDelegate.h
//  SpeakLine
//
//  Created by 叶孙松 on 13-12-29.
//  Copyright (c) 2013年 叶孙松. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate,NSSpeechSynthesizerDelegate>{
    NSArray *_voices;
    NSSpeechSynthesizer *_speechSynth;
}

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSButton *stopButtion;
@property (weak) IBOutlet NSButton *speakButton;
//@property (weak) IBOutlet NSScrollView *tableView;
@property (weak) IBOutlet NSTableView *tableView;

- (IBAction)stopIt:(id)sender;
- (IBAction)sayIt:(id)sender;

@end