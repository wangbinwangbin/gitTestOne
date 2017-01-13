


//
//  WBTool.m
//  RACtest
//
//  Created by wangbin on 2017/1/13.
//  Copyright © 2017年 wangbin. All rights reserved.
//

#import "WBTool.h"

@implementation WBTool

- (void)calcuate:(int(^)(int result))calcuateBlock{

 _result = calcuateBlock(_result);

}
@end
