//
//  WBTool.h
//  RACtest
//
//  Created by wangbin on 2017/1/13.
//  Copyright © 2017年 wangbin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WBTool : NSObject
@property (nonatomic,assign) int result;
//参数block
- (void)calcuate:(int(^)(int result))calcuateBlock;
@end
