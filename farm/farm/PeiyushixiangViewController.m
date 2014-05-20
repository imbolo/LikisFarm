//
//  PeiyushixiangViewController.m
//  farm
//
//  Created by liuyang on 14-5-18.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "PeiyushixiangViewController.h"

@interface PeiyushixiangViewController ()

@end

@implementation PeiyushixiangViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"peiyushixiang" ofType:@"html"];
    NSString* htmlString = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
    
    NSString *path = [[NSBundle mainBundle] bundlePath];
    NSURL *baseURL = [NSURL fileURLWithPath:path];
    //    _webView
    [_webView loadHTMLString:htmlString baseURL:baseURL];
    
    //    transparent background
    _webView.backgroundColor = [UIColor clearColor];
    _webView.opaque = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
//    request.URL;
    return YES;
}

@end
