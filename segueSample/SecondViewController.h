//
//  SecondViewController.h
//  segueSample
//
//  Created by kentaru on 2014/04/29.
//  Copyright (c) 2014年 hogehoge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController{
    NSString* _myValue;
    
}
@property (weak, nonatomic) IBOutlet UIWebView *SecondwebView;
@property (nonatomic) NSString* myValue;

- (IBAction)pushBtn:(id)sender;

@end
