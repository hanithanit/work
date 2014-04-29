//
//  ViewController.h
//  segueSample
//
//  Created by kentaru on 2014/04/29.
//  Copyright (c) 2014年 hogehoge. All rights reserved.
//


//http://www.aoharu-b.com/cgi/sk/2012/10/storyboard.html

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *webView;

- (IBAction)pushBtn:(id)sender;
@end
