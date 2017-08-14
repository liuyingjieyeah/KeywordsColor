//
//  ViewController.m
//  KeywordsColorDemo
//
//  Created by liuyingjie on 2017/8/14.
//  Copyright © 2017年 liuyingjie. All rights reserved.
//

#import "ViewController.h"
#import "KeywordsColor.h"

@interface ViewController ()

@property (nonatomic, strong, readwrite) NSMutableAttributedString *changeColorString;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(10, 64, 300, 100)];
    label.numberOfLines = 0;
    label.font = [UIFont systemFontOfSize:17.f];
    
    /*
     * 展示的文本
     */
    NSString *total1 = @"改变文中的关键字颜色,不做其它设置";
    
    /*
     * 你搜索的内容
     */
    NSArray *subArray1 = @[@"关键字",@"设置"];
    
    self.changeColorString = [KeywordsColor ls_changeCorlorWithColor:[UIColor redColor] TotalString:total1 SubStringArray:subArray1];
    
    label.attributedText = self.changeColorString;
    
    [self.view addSubview:label];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
