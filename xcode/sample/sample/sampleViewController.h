//
//  sampleViewController.h
//  sample
//
//  Created by kentaru on 2014/02/13.
//  Copyright (c) 2014年 hogehoge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface sampleViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *applicationDate;
@property (weak, nonatomic) IBOutlet UISegmentedControl *mean;
@property (weak, nonatomic) IBOutlet UITextField *departure;
@property (weak, nonatomic) IBOutlet UITextField *destination;
@property (weak, nonatomic) IBOutlet UITextField *cost;
@property (weak, nonatomic) IBOutlet UILabel *message;

- (IBAction)record:(id)sender;
@end
