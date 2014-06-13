//
//  CookbookDetailViewController.m
//  farm
//
//  Created by liuyang on 14-5-20.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "CookbookDetailViewController.h"

@interface CookbookDetailViewController ()

@property NSString* selectedIndex;

@end

@implementation CookbookDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void) initTab
{
    [self.tab1 addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.tab2 addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.tab3 addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.scrollView.frame = self.view.bounds;
    self.scrollView.contentSize = CGSizeMake(320, 800);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
    NSLog(@"start load cookbook-detail");
    
    NSString* topImageName = self.selectedIndex;
    topImageName = [@"" stringByAppendingFormat:@"cb%@.png", topImageName];
    
    NSLog(topImageName);
    
    [self.topImage setImage:[UIImage imageNamed:topImageName]];
    
    [self initTab];
    
    //load html
//    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"cookbook-detail" ofType:@"html"];
//    NSString* htmlString = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
//    
//    NSString *path = [[NSBundle mainBundle] bundlePath];
//    NSURL *baseURL = [NSURL fileURLWithPath:path];
//    
//    _webView.backgroundColor = [UIColor clearColor];
//    _webView.opaque = NO;
//    //    _webView.scrollView.scrollEnabled = NO;
//    //    _webView.scrollView.bounces = NO;
//    
//    [_webView loadHTMLString:htmlString baseURL:baseURL];

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

- (void)getLastController:(CookbookViewController *) lastViewController{
//    lastViewController
//    NSLog(lastViewController.selectedItem);
    _selectedIndex = lastViewController.selectedItem;
}

- (void)clickButton:(UIButton*) button{
    
    [self.tab1 setSelected:NO];
    [self.tab2 setSelected:NO];
    [self.tab3 setSelected:NO];
    [button setSelected:YES];
    
    int index = 0;
    if (button == self.tab1) {
        index = 0;
    }
    else if (button == self.tab2) {
        index = 1;
    }
    else if (button == self.tab3) {
        index = 2;
    }
    //    [UIView animateWithDuration:0.3
    //                          delay:0
    //                        options:UIViewAnimationCurveEaseOut
    //                     animations:^
    //     {
    //         CGRect frame = _containerView.frame;
    //         //         frame.origin.y = 0;
    //         frame.origin.x = -(320 * (index));
    //         _containerView.frame = frame;
    //
    //     }
    //                     completion:^(BOOL finished)
    //     {
    //         NSLog(@"Fade out Completed");
    //         //              [splashView ];
    //     }];
    
    
}



@end
