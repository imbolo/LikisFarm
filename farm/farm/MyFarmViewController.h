//
//  MyFarmViewController.h
//  farm
//
//  Created by liuyang on 14-5-18.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "ViewController.h"
#import "BaseViewController.h"

@interface MyFarmViewController : BaseViewController <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIBarButtonItem *revealButtonItem;

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end
