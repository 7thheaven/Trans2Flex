//
//  TransHelper.m
//  Trans2Flex
//
//  Created by July on 2017/11/9.
//  Copyright © 2017年 July. All rights reserved.
//

#import "TransHelper.h"

#define NameOriLength 12

@interface TransHelper ()

@property (nonatomic, strong) UIView *currentRootView;
@property (nonatomic, strong) NSMutableArray *viewInfoList;

@end

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

- (NSDictionary *)dealSingleViewInfo:(UIView *)view option:(TransOption)option
{
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    CGFloat x = 0;
    CGFloat y = 0;
    if (option == TransOptionNormal) {
        UIView *tempView = view;
        while (tempView != self.currentRootView) {
            x += tempView.frame.origin.x;
            y += tempView.frame.origin.y;
            tempView = tempView.superview;
        }
    } else {
        if ((view != self.currentRootView)) {
            x += view.frame.origin.x;
            y += view.frame.origin.y;
        }
    }
    [dic setObject:@(x) forKey:@"x"];
    [dic setObject:@(y) forKey:@"y"];
    [dic setObject:@(view.frame.size.width) forKey:@"width"];
    [dic setObject:@(view.frame.size.height) forKey:@"height"];
    NSString *name;
    if ([view respondsToSelector:@selector(text)]) {
        name = [view performSelector:@selector(text)];
        if ([name length] > NameOriLength) {
            name = [name substringToIndex:NameOriLength];
        }
    } else if ([view isKindOfClass:[UIImageView class]]) {
        name = @"image";
    } else {
        name = @"view";
    }
    [dic setObject:name forKey:@"name"];
    [dic setObject:[[view class] description] forKey:@"oriClass"];
    if ([view respondsToSelector:@selector(backgroundColor)]) {
        UIColor *color = [view performSelector:@selector(backgroundColor)];
        if (color && ![color isEqual:[UIColor clearColor]]) {
            [dic setObject:[[self class] hexFromUIColor:color] forKey:@"backgroundColor"];
        }
    }
    return [NSDictionary dictionaryWithDictionary:dic];
}

- (void)prepareForExtractView:(UIView *)view
{
    self.currentRootView = view;
    self.viewInfoList = [NSMutableArray array];
}

- (NSDictionary *)extractViewInfoRecursively:(UIView *)view
{
    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithDictionary:[self dealSingleViewInfo:view option:TransOptionMaintainLevel]];
    NSMutableArray *children = [NSMutableArray array];
    for (UIView *child in view.subviews) {
        [children addObject:[self extractViewInfoRecursively:child]];
    }
    [dic setObject:[NSArray arrayWithArray:children] forKey:@"children"];
    return [NSDictionary dictionaryWithDictionary:dic];
}

- (NSDictionary *)extractViewInfoTree:(UIView *)view
{
    [self prepareForExtractView:view];
    return [self extractViewInfoRecursively:view];
}

- (void)collectViewInfoRecursively:(UIView *)view
{
    NSDictionary *dic = [self dealSingleViewInfo:view option:TransOptionNormal];
    [self.viewInfoList addObject:dic];
    for (UIView *child in view.subviews) {
        [self collectViewInfoRecursively:child];
    }
}

- (NSArray *)extractViewInfoList:(UIView *)view
{
    [self prepareForExtractView:view];
    [self collectViewInfoRecursively:view];
    return [NSArray arrayWithArray:self.viewInfoList];
}

+ (NSString *)hexFromCGColor:(CGColorRef)color
{
    if (CGColorSpaceGetModel(CGColorGetColorSpace(color)) != kCGColorSpaceModelRGB) {
        return @"";
    }
    return [NSString stringWithFormat:@"#%X%X%X", (int)((CGColorGetComponents(color))[0]*255.0),
            (int)((CGColorGetComponents(color))[1]*255.0),
            (int)((CGColorGetComponents(color))[2]*255.0)];
}
+ (NSString *)hexFromUIColor:(UIColor*)color
{
    if (CGColorGetNumberOfComponents(color.CGColor) < 4) {
        const CGFloat *components = CGColorGetComponents(color.CGColor);
        color = [UIColor colorWithRed:components[0]
                                green:components[0]
                                 blue:components[0]
                                alpha:components[1]];
    }
    return [[self class] hexFromCGColor:color.CGColor];
}

@end
