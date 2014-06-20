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

@property NSArray* cbNames;

@property CGFloat tabHeight;

@property UIImage* image1;
@property UIImage* image2;
@property UIImage* image3;

@end

@implementation CookbookDetailViewController

@synthesize tabHeight;

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

- (void) initUI
{
    //scroll view
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    [self.view addSubview: _scrollView];
    
    //top image
    self.topImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 286)];
    [self.scrollView addSubview:_topImage];
    
    //tab button
    _tab1 = [[UIButton alloc] initWithFrame:CGRectMake(0, 287, 107, 51)];
    [_tab1 setBackgroundImage:[UIImage imageNamed:@"食材_normal.png"] forState:UIControlStateNormal];
    [_tab1 setBackgroundImage:[UIImage imageNamed:@"食材_selected.png"] forState:UIControlStateSelected];
    [_tab1 addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    [_tab1 setSelected:YES];
    [self.scrollView addSubview:_tab1];
    [_tab1.layer setZPosition:100];
    
    _tab2 = [[UIButton alloc] initWithFrame:CGRectMake(107, 287, 107, 51)];
    [_tab2 setBackgroundImage:[UIImage imageNamed:@"步骤_normal.png"] forState:UIControlStateNormal];
    [_tab2 setBackgroundImage:[UIImage imageNamed:@"步骤_selected.png"] forState:UIControlStateSelected];
    [_tab2 addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollView addSubview:_tab2];
    [_tab2.layer setZPosition:100];
    
    _tab3 = [[UIButton alloc] initWithFrame:CGRectMake(214, 287, 107, 51)];
    [_tab3 setBackgroundImage:[UIImage imageNamed:@"小贴士_normal.png"] forState:UIControlStateNormal];
    [_tab3 setBackgroundImage:[UIImage imageNamed:@"小贴士_selected.png"] forState:UIControlStateSelected];
    [_tab3 addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollView addSubview:_tab3];
    [_tab3.layer setZPosition:100];
    
    //
    UIView* vi = [[UIView alloc] initWithFrame:CGRectMake(0, 328, 960, 40)];
    [vi setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"whiteBg.png"]]];
    [self.scrollView addSubview:vi];
    //contents
    self.contents = [[UIView alloc] initWithFrame:CGRectMake(0, 328, 960, 800)];
    [_contents setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"whiteBg.png"]]];
    [self.scrollView addSubview:_contents];
    
    
    
    //view1
    self.content1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 20, 320, 283)];
    _content1.contentMode = UIViewContentModeTop;
    [self.contents addSubview:_content1];
    
    //view2
    self.content2 = [[UIImageView alloc] initWithFrame:CGRectMake(320, 20, 320, 283)];
    _content2.contentMode = UIViewContentModeTop;
    [self.contents addSubview:_content2];
    
    //view3
    self.content3 = [[UIImageView alloc] initWithFrame:CGRectMake(640, 20, 320, 283)];
    _content3.contentMode = UIViewContentModeTop;
    [self.contents addSubview:_content3];
    

}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.scrollView.frame = self.view.bounds;
    self.scrollView.contentSize = CGSizeMake(320, 380 + tabHeight);
    
}

- (void) resetContentHeight
{
    self.scrollView.contentSize = CGSizeMake(320, 380 + tabHeight);
    CGFloat x = self.contents.frame.origin.x;
    CGFloat y = self.contents.frame.origin.y;
    [self.contents setFrame:CGRectMake(x, y, 960, 64 + tabHeight)];
    
}

- (void)setTabContents: (id) index
{
    self.image1 = [UIImage imageNamed:[@"" stringByAppendingFormat:@"cb%@食材.png", index]];
    [self.content1 setImage:self.image1];
    
    self.image2 = [UIImage imageNamed:[@"" stringByAppendingFormat:@"cb%@图文步骤.png", index]];
    [self.content2 setImage:self.image2];
    
    self.image3 = [UIImage imageNamed:[@"" stringByAppendingFormat:@"cb%@小贴士.png", index]];
    [self.content3 setImage:self.image3];
    
    tabHeight = self.image1.size.height;
    [self.contents setFrame:CGRectMake(0, 338, 960, 64 + tabHeight)];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    
    _cbNames = @[@"草莓酥", @"甘蓝沙拉", @"番茄通心粉", @"乳清牙酥", @"茄汁意大利面", @"可可蛋糕", @"玉米芝士挞", @"核桃迷迭燕麦"];
    
    NSLog(@"start load cookbook-detail");
    
    
    
    NSString* index = self.selectedIndex;
    NSString* topImageName = [@"" stringByAppendingFormat:@"cb%@.png", index];
    
    NSUInteger* idx = [index integerValue] - 1;
    
    self.navigationItem.title = [_cbNames objectAtIndex:idx];
    
    
    NSLog([_cbNames objectAtIndex:idx]);
    
    
    [self initUI];
    
    
    [self.topImage setImage:[UIImage imageNamed:topImageName]];
    
    [self setTabContents:index];
    
    
    
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
        tabHeight = self.image1.size.height;
    }
    else if (button == self.tab2) {
        index = 1;
        tabHeight = self.image2.size.height;
    }
    else if (button == self.tab3) {
        index = 2;
        tabHeight = self.image3.size.height;
    }
    
    tabHeight = tabHeight < 100 ? 290 : tabHeight;
    
    [self resetContentHeight];
    
    [UIView animateWithDuration:0.3
                          delay:0
                        options:UIViewAnimationCurveEaseOut
                     animations:^
     {
         CGRect frame = _contents.frame;
         //         frame.origin.y = 0;
//         frame.origin.y = 328;
         frame.origin.x = -(320 * (index));
         _contents.frame = frame;
         
     }
                     completion:^(BOOL finished)
     {
         NSLog(@"Fade out Completed");
         //              [splashView ];
     }];
    
    
}



@end
