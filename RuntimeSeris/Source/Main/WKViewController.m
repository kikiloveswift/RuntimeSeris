//
//  WKViewController.m
//  RuntimeSeris
//
//  Created by kong on 16/9/19.
//  Copyright © 2016年 kong. All rights reserved.
//

#import "WKViewController.h"

@interface WKViewController ()

@property (nonatomic, strong) WKWebView *webView;

@end

@implementation WKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)initUI
{
    _webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 64, KWidth, KHeight - 64)];
    _webView.UIDelegate = self;
    _webView.navigationDelegate = self;
    _webView.allowsBackForwardNavigationGestures = YES;
    [self.view addSubview:_webView];
}

#pragma mark -WKNavigationDelegate
//页面开始加载调用
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation
{
    NSLog(@"function is %s",__FUNCTION__);
}

// 当内容开始返回时调用
- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation
{
    NSLog(@"function is %s",__FUNCTION__);
}

// 页面加载完成之后调用
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation
{
    NSLog(@"function is %s",__FUNCTION__);
}

// 页面加载失败时调用
- (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation
{
    NSLog(@"function is %s",__FUNCTION__);
}

#pragma mark -WKNavigationDelegate--跳转与决定跳转
// 接收到服务器跳转请求之后调用
- (void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(WKNavigation *)navigation
{
    
}
// 在收到响应后，决定是否跳转
- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler
{
    
}
// 在发送请求之前，决定是否跳转
- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler
{
    
}


/**
 *  web界面中有弹出警告框时调用
 *
 *  @param webView           实现该代理的webview
 *  @param message           警告框中的内容
 *  @param frame             主窗口
 *  @param completionHandler 警告框消失调用
 */
- (void)webView:(WKWebView *)webView runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(void))completionHandler
{
    
}

// 从web界面中接收到一个脚本时调用
- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message
{
    
}




@end
