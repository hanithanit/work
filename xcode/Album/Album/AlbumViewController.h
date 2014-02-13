//
//  AlbumViewController.h
//  Album
//
//  Created by kentaru on 2014/02/13.
//  Copyright (c) 2014年 hogehoge. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface AlbumViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UIImageView *screen;

- (IBAction)changeSlider:(id)sender;
@end
