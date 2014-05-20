//
//  CookbookViewController.m
//  farm
//
//  Created by liuyang on 14-5-20.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "CookbookViewController.h"
#import "SWRevealViewController.h"

@interface CookbookViewController ()

@end

@implementation CookbookViewController

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
    
    //side menu
    [self.revealButtonItem setTarget: self.revealViewController];
    [self.revealButtonItem setAction: @selector( revealToggle: )];
    [self.navigationController.navigationBar addGestureRecognizer: self.revealViewController.panGestureRecognizer];
    
    //load html
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"cookbook" ofType:@"html"];
    NSString* htmlString = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
    
    NSString *path = [[NSBundle mainBundle] bundlePath];
    NSURL *baseURL = [NSURL fileURLWithPath:path];
    
    _webView.backgroundColor = [UIColor clearColor];
    _webView.opaque = NO;
//    _webView.scrollView.scrollEnabled = NO;
    //    _webView.scrollView.bounces = NO;
    
    [_webView loadHTMLString:htmlString baseURL:baseURL];
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
    NSString* url = [request.URL absoluteString];
    
    if ([url  isEqual: @"action:goto:cookbook-detail"]) {
        ViewController* nextView = [self.storyboard instantiateViewControllerWithIdentifier:@"cookbook-detail"];
        [self.navigationController pushViewController:nextView animated:YES];
    }
    
    return YES;
}


@end
