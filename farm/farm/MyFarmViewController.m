//
//  MyFarmViewController.m
//  farm
//
//  Created by liuyang on 14-5-18.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "MyFarmViewController.h"
#import "SWRevealViewController.h"

@interface MyFarmViewController ()

@end

@implementation MyFarmViewController

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
    //侧边菜单
    //侧边菜单
    [self.revealButtonItem setTarget: self.revealViewController];
    [self.revealButtonItem setAction: @selector( revealToggle: )];
    [self.navigationController.navigationBar addGestureRecognizer: self.revealViewController.panGestureRecognizer];
    
    //load html
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"myfarm" ofType:@"html"];
    NSString* htmlString = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
    
    NSString *path = [[NSBundle mainBundle] bundlePath];
    NSURL *baseURL = [NSURL fileURLWithPath:path];
    
    _webView.backgroundColor = [UIColor clearColor];
    _webView.opaque = NO;
    _webView.scrollView.scrollEnabled = NO;
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
    
    UIBarButtonItem *returnButtonItem = [[UIBarButtonItem alloc] init];
    returnButtonItem.title = @"";
    self.navigationItem.backBarButtonItem = returnButtonItem;
    
    
    if ([url  isEqual: @"action:goto:peiyushixiang"]) {
        ViewController* nextView = [self.storyboard instantiateViewControllerWithIdentifier:@"peiyushixiang"];
        [self.navigationController pushViewController:nextView animated:YES];
    }
    else if ([url  isEqual: @"action:goto:package"]) {
        ViewController* nextView = [self.storyboard instantiateViewControllerWithIdentifier:@"packagefood"];
        [self.navigationController pushViewController:nextView animated:YES];
    }
    
    return YES;
}

@end
