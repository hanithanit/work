//
//  sampleViewController.m
//  sample
//
//  Created by kentaru on 2014/02/13.
//  Copyright (c) 2014年 hogehoge. All rights reserved.
//

#import "sampleViewController.h"

@interface sampleViewController ()

@end

@implementation sampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSDate *date = [NSDate date];
    NSDateFormatter *fmt =
    [[NSDateFormatter alloc] init];
    [fmt setDateFormat:@"yyyy/MM/dd"];
    self.applicationDate.text=[fmt stringFromDate:date];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)record:(id)sender {
    NSLog(@"record!!");
    NSInteger mean = self.mean.selectedSegmentIndex;
    NSString *strmean;
    
    switch (mean) {
        case 0:
            strmean=@"電車";
            break;
            
        case 1:
            strmean=@"バス";
            break;
            
        default:
            strmean=@"タクシー";
            break;
    }
    
    NSString *departure = self.departure.text;
    NSString *destination = self.destination.text;
    
    NSString *cost = self.cost.text;
    
    NSString *message = [NSString stringWithFormat:@"%@で%@から%@まで行ったので、%@かかりました",strmean,departure,destination,cost];
    self.message.text = message;
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
