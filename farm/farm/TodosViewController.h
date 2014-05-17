//
//  TodosViewController.h
//  farm
//
//  Created by liuyang on 14-5-14.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"

@interface TodosViewController : BaseViewController

@property (weak, nonatomic) IBOutlet UIBarButtonItem *revealButtonItem;

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end
