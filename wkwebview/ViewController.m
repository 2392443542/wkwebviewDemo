//
//  ViewController.m
//  wkwebview
//
//  Created by liwenjing on 2018/5/13.
//  Copyright © 2018年 liwenjing. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()

@property(strong,atomic) WKWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 1.创建webview，并设置大小，"20"为状态栏高度
    WKWebView *webView = [[WKWebView alloc] initWithFrame:CGRectMake(0,20,self.view.frame.size.width,self.view.frame.size.height -20)];
    // 2.创建请求
    NSMutableURLRequest *request =[NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://www.chuangqilingshou.com/sites/ma/index.php?m=touch&c=index&a=init"]];
    // 3.加载网页
    [webView loadRequest:request];
    
    //最后将webView添加到界面
    [self.view addSubview:webView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
