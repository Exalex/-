//
//  AnswerViewController.m
//  教考助手
//
//  Created by Alex on 15/10/16.
//  Copyright © 2015年 Alex. All rights reserved.
//

#import "AnswerViewController.h"
#import "AnswerScrollView.h"
#import "MyDataManager.h"
#import "AnswerModel.h"

@interface AnswerViewController ()

@end

@implementation AnswerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.view.backgroundColor = [UIColor whiteColor];
    
    //模型接收get方法取到的数据
    NSMutableArray *arr = [[NSMutableArray alloc]init];
    NSArray *array = [MyDataManager getData:answer];
    for (int i=0; i<array.count-1; i++) {
        AnswerModel *model =  array[i];
        if ([model.pid intValue]==_number+1) {
            [arr addObject:model];
        }
    }
    
    //初始化自定义view
    AnswerScrollView *view = [[AnswerScrollView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-64) withDataArray:array];
    [self.view addSubview:view];
}


@end
