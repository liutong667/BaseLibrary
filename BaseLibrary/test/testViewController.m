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

    NSString * jsonStr = @"{\"price\":71.49}";
    NSData *jsonData = [jsonStr dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *json = [NSMutableDictionary dictionaryWithDictionary:[NSJSONSerialization JSONObjectWithData:jsonData options:0 error:nil]];
    NSLog(@"处理之前：%@", [json[@"price"] stringValue]);
    
    double cash = [json doubleForKey:@"cash"];
    NSLog(@"%.2f",cash);
}
@end
