//
//  ViewController.m
//  RACtest
//
//  Created by wangbin on 2017/1/13.
//  Copyright © 2017年 wangbin. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>
#import "WBTool.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    WBTool *tool = [[WBTool alloc]init];
//    [tool calcuate:^(int result){
//       //存放所有的计算代码
//        result+=5;
//        return result;
//    }];
//    [tool calcuate:^int(int result) {
//        return 1;
//    }];
//
//    RACSignal 有数据产生的时候就是用它
////    1，创建信号。
//    RACSignal *singal = [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
////        didSubscribe  这个其实就是这个block。当订阅的额时候才会去调用这个block
////        didSubscribe。 作用就是发送数据
//        [subscriber sendNext:@1];
//        [subscriber sendCompleted];
//        return [RACDisposable disposableWithBlock:^{
//            NSLog(@"adad");
//        }];
////        return [RACDisposable disposableWithBlock:^{
////            NSLog(@"cancle");
////        }];
//    }];
////2订阅信号
//    [singal subscribeNext:^(id x) {
////       x 就是信号发送的内容
////        这里面就是一个nextBlock。 只要发送订阅者发送数据就会被调用
////        nextblock。  在这里处理数据，例如展示到UI上面
//        NSLog(@"%@",x);
//    }];
//    //  只要订阅者调用sendNext。就会执行nextblock。 只要信号被订阅就会执行didSubscribe
//    //  默认一个信号发送完毕会主动取消订阅，
    
// create  Singal
    
    RACSubject   *subject = [RACSubject subject];
    //subscribe   Singal。  subject 处理订阅仅仅是保存订阅者
    [subject  subscribeNext:^(id x) {
        NSLog(@"%@",x);
        
    }];
    // send Singal
    [subject sendNext:@2];
    //执行流程
    
    NSLog(@"添加代码");
      NSLog(@"添加代码");
      NSLog(@"添加代码");
      NSLog(@"添加代码");
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
