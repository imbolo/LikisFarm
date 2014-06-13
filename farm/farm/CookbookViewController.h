//
//  CookbookViewController.h
//  farm
//
//  Created by liuyang on 14-5-20.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "ViewController.h"

@interface CookbookViewController : BaseViewController <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *revealButtonItem;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@property NSString* selectedItem;

@end
