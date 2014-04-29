//
//  SecondViewController.m
//  segueSample
//
//  Created by kentaru on 2014/04/29.
//  Copyright (c) 2014年 hogehoge. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize myValue = _myValue;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{

    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //http://omega999.hatenablog.com/entry/2013/06/16/233131
    NSString* url = [NSString stringWithFormat:@"http://auctions.search.yahoo.co.jp/search?p=%@",_myValue];

    
    
    //NSURL URLWithString:URL;
    
    //NSURLRequest *req=[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://auctions.search.yahoo.co.jp/search?p=test"]];
    NSURLRequest *req=[NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    [_SecondwebView loadRequest:req];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)pushBtn:(id)sender {
   //表示した画面を閉じるhttp://d.hatena.ne.jp/tayutaedomo/20130331/1364750390
    [self dismissViewControllerAnimated:YES completion:nil];
    NSLog(@"%@",_myValue);
    
    
}
@end
