//
//  AppDelegate.m
//  SpeakLine
//
//  Created by 叶孙松 on 13-12-29.
//  Copyright (c) 2013年 叶孙松. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

-(id)init{
    self=[super init];
    if (self) {
        NSLog(@"init");
        
        _speechSynth=[[NSSpeechSynthesizer alloc] initWithVoice:nil];
        
        [_speechSynth setDelegate:self];
        _voices=[NSSpeechSynthesizer availableVoices];
    }
    return self;
}

- (IBAction)stopIt:(id)sender {
    NSLog(@"stopping");
    [_speechSynth stopSpeaking];
}

- (IBAction)sayIt:(id)sender {
    NSString *string=[_textField stringValue];
    
    if ([string length]==0) {
        NSLog(@"string from %@ is of zero_length",_textField);return;
    }
    
    [_speechSynth startSpeakingString:string];
    NSLog(@"Have started to say %@",string);
    
    [_stopButtion setEnabled:YES];
    [_speakButton setEnabled:NO];
    [_tableView setEnabled:NO];
}

-(void)speechSynthesizer:(NSSpeechSynthesizer *)sender didFinishSpeaking:(BOOL)finishedSpeaking{
    NSLog(@"finishedSpeakin=%d",finishedSpeaking);
    
    [_stopButtion setEnabled:NO];
    [_speakButton setEnabled:YES];
    [_tableView setEnabled:YES];
}

-(NSInteger)numberOfRowsInTableView:(NSTableView*)tv{
    return (NSInteger)[_voices count];
}

-(id)tableView:(NSTableView*)tv objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    NSString *v=[_voices objectAtIndex:row];
//    return v;
    
    NSDictionary *dict=[NSSpeechSynthesizer attributesForVoice:v];
    return [dict objectForKey:NSVoiceName];
}

-(void)tableViewSelectionDidChange:(NSNotification*)notification{
    NSInteger row=[_tableView selectedRow];
    if (row==-1) {
        return;
    }
    
    NSString *selectedVoice=[_voices objectAtIndex:row];
    [_speechSynth setVoice:selectedVoice];
    NSLog(@"new voice=%@",selectedVoice);
}

-(void)awakeFromNib{
    NSString *defaultVoice=[NSSpeechSynthesizer defaultVoice];
    NSInteger defaultRow=[_voices indexOfObject:defaultVoice];
    NSIndexSet *indices=[NSIndexSet indexSetWithIndex:defaultRow];
    [_tableView selectRowIndexes:indices byExtendingSelection:NO];
    [_tableView scrollRowToVisible:defaultRow];
}
/**
 *	检查的委托方法存在与否过程
 *
 *	@param	aSelector	<#aSelector description#>
 *
 *	@return	<#return value description#>
 */
-(BOOL)respondsToSelector:(SEL)aSelector{
    NSString *methodName=NSStringFromSelector(aSelector);
    NSLog(@"respondToSelector:%@",methodName);
    return [super respondsToSelector:aSelector];
}

@end