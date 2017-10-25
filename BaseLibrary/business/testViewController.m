//
//  testViewController.m
//  BaseLibrary
//
//  Created by liutong on 2017/9/24.
//  Copyright © 2017年 liutong. All rights reserved.
//

#import "testViewController.h"
#import "NSDictionary+Ex.h"

@interface testViewController ()

@end

@implementation testViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self test];
}

- (void)test {
    NSDictionary *dic = @{@"bool":@"1"};
    BOOL b = [dic boolForKey:@"bool"];
    NSLog(@"%zd", b);
}
@end
