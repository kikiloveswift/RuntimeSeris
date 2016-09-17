//
//  ViewController.m
//  RuntimeSeris
//
//  Created by kong on 16/9/15.
//  Copyright © 2016年 kong. All rights reserved.
//

#import "ViewController.h"
#import "CustomClass.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    objc_msgSend(self);
    objc_msgSend(self,@selector(testTheMessageSender));
//    [self testTheMessageSender];
   
}


/**
 测试Runtime的消息传递机制
 */
- (void)testTheMessageSender
{
    CustomClass * custom = [[CustomClass alloc] init];
    objc_msgSend(custom,@selector(sayHelllo));
    NSMutableArray *mArr;
    [mArr addObject:@"Love"];
    NSLog(@"custom is %@",custom);
}


/**
 解决野指针的崩溃r

 @param sel 实例方法

 @return BOOL
 */
+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    NSLog(@"GO HERE");
    return YES;
}

/**
 解决野指针的崩溃

 @param sel 类方法

 @return BOOL
 */
+ (BOOL)resolveClassMethod:(SEL)sel
{
    return YES;
}

@end
