//
//  RandomController.h
//  Random
//
//  Created by 叶孙松 on 13-12-24.
//  Copyright (c) 2013年 叶孙松. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RandomController : NSObject{
    IBOutlet NSTextField *textField;
}

-(IBAction)generate:(id)sender;
-(IBAction)seed:(id)sender;
@end
