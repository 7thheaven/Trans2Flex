//
//  TransHelper.h
//  Trans2Flex
//
//  Created by July on 2017/11/9.
//  Copyright © 2017年 July. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum {
    TransOptionNormal  = 0,  //抹平当前层级关系，重新整理
    TransOptionMaintainLevel,  //保持当前层级关系
}TransOption;

@interface TransHelper : NSObject

+ (TransHelper *)sharedHelper;

- (NSDictionary *)extractViewInfoTree:(UIView *)view;

- (NSArray *)extractViewInfoList:(UIView *)view;

@end
