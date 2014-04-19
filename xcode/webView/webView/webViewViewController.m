//
//  webViewViewController.m
//  webView
//
//  Created by kentaru on 2014/04/19.
//  Copyright (c) 2014年 hogehoge. All rights reserved.
//

#import "webViewViewController.h"

@interface webViewViewController ()

@end

@implementation webViewViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
    NSURLRequest *req=[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://auctions.yahoo.co.jp"]];
    [_webView loadRequest:req];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushBtn:(id)sender {
    [self performSegueWithIdentifier:@"mySegue" sender:self];
    
    
    //http://www.aoharu-b.com/cgi/sk/2012/10/storyboard.html
    
}
@end
