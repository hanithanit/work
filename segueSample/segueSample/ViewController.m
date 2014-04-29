//
//  ViewController.m
//  segueSample
//
//  Created by kentaru on 2014/04/29.
//  Copyright (c) 2014年 hogehoge. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end
@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushBtn:(id)sender {
    //self(自分)がmySegueを使って遷移します
    [self performSegueWithIdentifier:@"mySegue" sender:self];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"mySegue"]){
        SecondViewController *viewCon =     segue.destinationViewController;
        //viewCon.delegate = self;
        viewCon.myValue = @"test";
    }

}
@end
