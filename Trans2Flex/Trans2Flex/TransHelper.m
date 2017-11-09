//
//  TransHelper.m
//  Trans2Flex
//
//  Created by July on 2017/11/9.
//  Copyright © 2017年 July. All rights reserved.
//

#import "TransHelper.h"

@implementation TransHelper

static TransHelper *transHelper = nil;

+ (TransHelper *)sharedHelper
{
    static dispatch_once_t predTrans = 0;
    dispatch_once(&predTrans, ^{
        transHelper = [[TransHelper alloc] init];
    });
    return transHelper;
}

- (void)test
{
    NSLog(@"Hello world!");
}

@end
