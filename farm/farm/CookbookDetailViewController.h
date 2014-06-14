//
//  CookbookDetailViewController.h
//  farm
//
//  Created by liuyang on 14-5-20.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "ViewController.h"
#import "CookbookViewController.h"

@interface CookbookDetailViewController : BaseViewController

//@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (retain, nonatomic) IBOutlet UIScrollView *scrollView;

@property (retain, nonatomic) IBOutlet UIImageView *topImage;

@property (retain, nonatomic) IBOutlet UIButton *tab1;
@property (retain, nonatomic) IBOutlet UIButton *tab2;
@property (retain, nonatomic) IBOutlet UIButton *tab3;

@property (retain, nonatomic) IBOutlet UIView *contents;
@property (retain, nonatomic) IBOutlet UIImageView *content1;
@property (retain, nonatomic) IBOutlet UIImageView *content2;
@property (retain, nonatomic) IBOutlet UIImageView *content3;



- (void)getLastController:(CookbookViewController *) lastViewController;

@end
