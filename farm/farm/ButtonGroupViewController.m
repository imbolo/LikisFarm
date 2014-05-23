//
//  ButtonGroupViewController.m
//  farm
//
//  Created by liuyang on 14-5-21.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "ButtonGroupViewController.h"

@interface ButtonGroupViewController ()

@end


@implementation ButtonGroupViewController

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
    
//    [self.button1 setTitle:@"hello" forState:UIControlStateNormal];
//    [self.button1 setBackgroundImage:[UIImage imageNamed:@"buttonGroupNormal.png"] forState:UIControlStateNormal];
//    [self.button1 setBackgroundImage:[UIImage imageNamed:@"buttonGroupSelected.png"] forState:UIControlStateSelected];
    self.button1.adjustsImageWhenHighlighted = NO;
    [self.button1 addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.button2 addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.button3 addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    
    _selectedButton = self.button1;
    [self.button1 setSelected:YES];
    
    UISlider* slider = [[UISlider alloc] initWithFrame:CGRectMake(10, 200, 200, 80)];

    CGRect rect = slider.frame;
    rect.size.height = 40;
    [slider setFrame: rect];
    
    [self.view addSubview:slider];
    
    
    UIImage *minImage = [[UIImage imageNamed:@"slider-track-fill.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 4, 0, 4)];
    UIImage *maxImage = [UIImage imageNamed:@"slider-track.png"];
    UIImage *thumbImage = [UIImage imageNamed:@"slider-cap.png"];
    
    
    [slider setMaximumTrackImage:maxImage forState:UIControlStateNormal];
    [slider setMinimumTrackImage:minImage forState:UIControlStateNormal];
    [slider setThumbImage:thumbImage forState:UIControlStateNormal];
    [slider setThumbImage:thumbImage forState:UIControlStateHighlighted];
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

- (void)clickButton:(UIButton*)button{
        
//    if (_selectedButton != nil) {
//        [_selectedButton setSelected:NO];
//    }
//    if (_selectedButton == button) {
//        _selectedButton = nil;
//    }
//    else{
//        _selectedButton = button;
//    }
    [self.button1 setSelected:NO];
    [self.button2 setSelected:NO];
    [self.button3 setSelected:NO];
    [button setSelected:YES];
    
    int index = 0;
    if (button == self.button1) {
        index = 0;
    }
    else if (button == self.button2) {
        index = 1;
    }
    else if (button == self.button3) {
        index = 2;
    }
    
    [UIView animateWithDuration:0.3
                          delay:0
                        options:UIViewAnimationCurveEaseOut
                     animations:^
     {
         CGRect frame = _containerView.frame;
//         frame.origin.y = 0;
         frame.origin.x = -(320 * (index));
         _containerView.frame = frame;

     }
                     completion:^(BOOL finished)
     {
         NSLog(@"Fade out Completed");
         //              [splashView ];
     }];
    
    
}

@end
