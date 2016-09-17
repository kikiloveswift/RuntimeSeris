//
//  CustomClass.m
//  RuntimeSeris
//
//  Created by kong on 16/9/16.
//  Copyright © 2016年 kong. All rights reserved.
//

#import "CustomClass.h"

@implementation CustomClass

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        [self setUpSetting];
    }
    return self;
}

- (void)setUpSetting
{
    
}

- (void)sayHelllo
{
    NSLog(@"HELLO");
}


@end
