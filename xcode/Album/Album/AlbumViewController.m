//
//  AlbumViewController.m
//  Album
//
//  Created by kentaru on 2014/02/13.
//  Copyright (c) 2014年 hogehoge. All rights reserved.
//

#import "AlbumViewController.h"

@interface AlbumViewController ()

@end

@implementation AlbumViewController

NSArray *aryImage;
NSInteger currentIndex;
NSTimer *timer;
SystemSoundID soundID;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    aryImage = [NSArray arrayWithObjects:
                [UIImage imageNamed:@"kiyomizu.jpg"]
                ,[UIImage imageNamed:@"Mac Leopard Desktop Place for Dying.jpg"]
                ,[UIImage imageNamed:@"win256.png"]
                ,[UIImage imageNamed:@"Y!.jpg@"]
                ,nil];
    timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(nextImage:) userInfo:nil repeats:YES];
    self.screen.image = [aryImage objectAtIndex:currentIndex];
    
}
- (void)nextImage:(NSTimer *)timer{
    
    currentIndex++;
    if(currentIndex == [aryImage count]){
        currentIndex = 0;
    }
    
    self.slider.value=currentIndex;
    
    self.screen.image = [aryImage objectAtIndex:currentIndex];
}

- (IBAction)changeSlider:(id)sender {
    currentIndex = self.slider.value;
    self.screen.image = [aryImage objectAtIndex:currentIndex];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
