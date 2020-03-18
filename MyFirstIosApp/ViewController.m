//
//  ViewController.m
//  MyFirstIosApp
//
//  Created by 左春生 on 2020/3/16.
//  Copyright © 2020 zuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//- (IBAction)btnClick:(id)sender forEvent :(UIEvent *)event;


@end

@implementation ViewController

- (void)viewDidLoad {
   //s sdfdsfsdf
    // Do any additional setup after loading the view.
    
//        UIButtonTypeDetailDisclosure,
//        UIButtonTypeInfoLight,
//        UIButtonTypeInfoDark,
//
//        UIButtonTypeRoundedRect
//        UIButtonTypeContactAdd,
        
        // 创建系统自带的按钮不需要设置尺寸，只能够修改位置
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
   // btn.frame = CGRectMake(100, 100, 100, 100);
    btn.center = self.view.center;
    
        // 监听按钮点击
    //    - (void)addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;
        /**
         *  target:目标对象
         *  action:要执行的动作(要调用的方法)
         *  controlEvents:事件类型,要监听的事件
         */
    [btn addTarget:self
            action:@selector(buttonClick:)
            forControlEvents:UIControlEventTouchUpInside];// 传递一个参数
        // 传递两个参数
//        [btn addTarget:self action:@selector(buttonClick: forControlEvents:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    [self createButton];
    
}

- (void)buttonClick:()btn{
    NSLog(@"按钮点击了 = %@",btn);
}

//-(void)buttonClick:(UIButton *)btn forControlEvents:(UIEvent *)events{
//    NSLog(@"按钮被点了 = %@,event = %@",btn,events);
//}


//- (IBAction)btnClick:(UIButton *)sender forEvent:(UIEvent *)event {

//}

- (void) createButton{
     // 创建按钮
         UIButton *headBtn = [[UIButton alloc] init];
   // 设置位置和尺寸
        //    CGPointMake(<#CGFloat x#>, <#CGFloat y#>)
        //    CGSizeMake(<#CGFloat width#>, <#CGFloat height#>)
        headBtn.frame = CGRectMake(100, 100, 100, 130);
        // 设置背景颜色
        // UIColor：一个UIColor对象就代表一种颜色
        //    [headBtn setBackgroundColor:[UIColor redColor]];
        headBtn.backgroundColor = [UIColor redColor];
        
        // 设置背景图片
        // UIImage:一个UIImage对象就代表一张图片
        //imageNamed:该方法会根据图片名字创建一张图片对象
             // 设置图片
    //  [headBtn setImage:[UIImage imageNamed:@"btn01"] forState:UIControlStateNormal];
    //  [headBtn setImage:[UIImage imageNamed:@"btn02"] forState:UIControlStateHighlighted];
        // 设置普通状态下显示的背景图片
        [headBtn setBackgroundImage:[UIImage imageNamed:@"btn01"] forState:UIControlStateNormal];
        // 设置高亮状态下显示的背景图片
        [headBtn setBackgroundImage:[UIImage imageNamed:@"btn02"] forState:UIControlStateHighlighted];
        
        // 监听点击事件
        [headBtn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        
    
        // 设置普通状态下显示的标题
        [headBtn setTitle:@"摸我呀" forState:UIControlStateNormal];
        // 设置普通状态下标题的颜色：红色
        [headBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        
    //    [headBtn addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
        
        // 设置高亮状态下显示的标题
        [headBtn setTitle:@"摸我干啥" forState:UIControlStateHighlighted];
        // 设置高亮状态下标题的颜色：蓝色
        [headBtn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
        //    headBtn.titleLabel.text = @"摸我干啥"; // 显示按钮文字的
        //    headBtn.imageView; // 显示按钮上的小图片
        
        
        // 设置标题字体大小
        headBtn.titleLabel.font = [UIFont systemFontOfSize:24];
        
        // 将按钮添加到控制器的view上
        [self.view addSubview:headBtn];
}

@end
