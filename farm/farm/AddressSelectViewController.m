//
//  AddressSelectViewController.m
//  farm
//
//  Created by liuyang on 14-5-21.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "AddressSelectViewController.h"

@interface AddressSelectViewController ()

@end

@implementation AddressSelectViewController

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

    //load html
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"addressSelect" ofType:@"html"];
    NSString* htmlString = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
    
    NSString *path = [[NSBundle mainBundle] bundlePath];
    NSURL *baseURL = [NSURL fileURLWithPath:path];
    //    _webView
    //    transparent background
    _webView.backgroundColor = [UIColor clearColor];
    _webView.opaque = NO;
    [_webView loadHTMLString:htmlString baseURL:baseURL];
    //    _webView.scrollView.scrollEnabled = NO;
    //    _webView.scrollView.bounces = NO;

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

@end
