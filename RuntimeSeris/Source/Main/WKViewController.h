//
//  WKViewController.h
//  RuntimeSeris
//
//  Created by kong on 16/9/19.
//  Copyright © 2016年 kong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>


@interface WKViewController : UIViewController<WKUIDelegate, WKNavigationDelegate,WKScriptMessageHandler>

@end
