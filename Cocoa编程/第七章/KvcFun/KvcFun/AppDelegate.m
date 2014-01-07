//
//  AppDelegate.m
//  KvcFun
//
//  Created by 叶孙松 on 14-1-3.
//  Copyright (c) 2014年 叶孙松. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize fido;

-(id)init{
    self=[super init];
    if (self) {
        [self setValue:[NSNumber numberWithInt:5] forKey:@"fido"];
        NSNumber *n=[self valueForKey:@"fido"];
        NSLog(@"fido=%@",n);
    }
    return self;
}

//-(int)fido{
//    NSLog(@"-fido is returning %D",fido);
//    return fido;
//}
//
//-(void)setFido:(int)x{
//    NSLog(@"-setFido: is called with %D",x);
//    fido=x;
//}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)incrementFido:(id)sender {
//    [self willChangeValueForKey:@"fido"];
//    fido++;
//    [self didChangeValueForKey:@"fido"];
//    ----------------------------------------
//    NSNumber *n=[self valueForKey:@"fido"];
//    NSNumber *npp=[NSNumber numberWithInt:[n intValue]+1];
//    [self setValue:npp forKey:@"fido"];
//    ----------------------------------------
    [self setFido:[self fido]+1];
}
@end
