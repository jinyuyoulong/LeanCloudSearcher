//
//  OCViewController.m
//  LeancloudSearcher
//
//  Created by fans on 2017/4/24.
//  Copyright © 2017年 Fans. All rights reserved.
//

#import "OCViewController.h"
#import <AVOSCloud/AVOSCloud.h>

@interface OCViewController ()

@end

@implementation OCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    AVObject *todo = [AVObject objectWithClassName:@"Todo"];
//    [todo setObject:@"工程师周会" forKey:@"title"];
//    [todo setObject:@"每周工程师会议，周一下午2点" forKey:@"content"];
//    [todo saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
//        if (succeeded) {
//            // 存储成功
//            NSLog(@"存储成功");
//        } else {
//            NSLog(@"失败的话，请检查网络环境以及 SDK 配置是否正确");
//            // 失败的话，请检查网络环境以及 SDK 配置是否正确
//        }
//    }];
////    数据获取
//
//    AVQuery *query = [AVQuery queryWithClassName:@"Todo"];
//    [query whereKey:@"priority" equalTo:@0];
//    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
//        NSArray<AVObject *> *priorityEqualsZeroTodos = objects;// 符合 priority = 0 的 Todo 数组
//    }];

    //get api
//    AVQuery *query = [AVQuery queryWithClassName:@"TestObject"];
//    [query getObjectInBackgroundWithId:@"58fd5ad48d6d8100589907ec" block:^(AVObject *object, NSError *error) {
//        // object 就是 id 为 558e20cbe4b060308e3eb36c 的 Todo 对象实例
//        NSLog(@"%@",object);
//    }];

    // 执行 CQL 语句实现删除一个 Todo 对象
    [AVQuery doCloudQueryInBackgroundWithCQL:@"delete from TestObject where objectId='58fd6431b123db74d87d0a28'" callback:^(AVCloudQueryResult *result, NSError *error) {
        // 如果 error 为空，说明保存成功
        if (error) {
            NSLog(@"%@",error);
        }else{
            NSLog(@"delete success!");
        }
    }];
}


@end
