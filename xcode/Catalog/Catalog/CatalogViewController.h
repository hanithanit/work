//
//  CatalogViewController.h
//  Catalog
//
//  Created by kentaru on 2014/02/13.
//  Copyright (c) 2014年 hogehoge. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoodsViewController.h>

@interface CatalogViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *display;

- (IBAction)execute:(id)sender;
@end
