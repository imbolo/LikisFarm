//
//  PackageViewController.m
//  farm
//
//  Created by liuyang on 14-5-20.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "PackageViewController.h"

@interface PackageViewController ()

@end

@implementation PackageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void) initUI
{
    UISlider* sliderSell = [[UISlider alloc] initWithFrame:CGRectMake(30, 164, 256, 20)];
    [self.view addSubview:sliderSell];
    
    UISlider* sliderPacakge = [[UISlider alloc] initWithFrame:CGRectMake(30, 252, 256, 20)];
    [self.view addSubview: sliderPacakge];
    
    UIImage *minImage = [[UIImage imageNamed:@"slider-track-fill.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 4, 0, 4)];
    UIImage *maxImage = [UIImage imageNamed:@"slider-track.png"];
    UIImage *thumbImage = [UIImage imageNamed:@"slider-cap.png"];
    UIImage *thumbImageGreen = [UIImage imageNamed:@"slider-cap-green.png"];
    
    [[UISlider appearance] setMinimumTrackImage:minImage forState:UIControlStateNormal];
    
    [sliderSell setMaximumTrackImage:[UIImage imageNamed:@"slider-track-green.png"] forState:UIControlStateNormal];
    [sliderSell setThumbImage:thumbImageGreen forState:UIControlStateNormal];
    [sliderSell setThumbImage:thumbImageGreen forState:UIControlStateHighlighted];
    
    [sliderPacakge setMaximumTrackImage:maxImage forState:UIControlStateNormal];
    [sliderPacakge setThumbImage:thumbImage forState:UIControlStateNormal];
    [sliderPacakge setThumbImage:thumbImage forState:UIControlStateHighlighted];
    

    [sliderSell setValue:0.5];
    [sliderPacakge setValue: 0.3];
    
    [sliderSell addTarget:self action:@selector(sliderSellChanged:) forControlEvents:UIControlEventValueChanged];
    [sliderPacakge addTarget:self action:@selector(sliderPacakgeChanged:) forControlEvents:UIControlEventValueChanged];
}

- (IBAction)sliderSellChanged:(UISlider *)sender {
    NSLog(@"slider value = %f", sender.value);

    [self.percentSelf setText: [NSString stringWithFormat:@"%d%%", (int)(sender.value * 100)]];
    [self.percentSell setText: [NSString stringWithFormat:@"%d%%", (int)((1 - sender.value) * 100)]];
}

- (IBAction)sliderPacakgeChanged:(UISlider *)sender {
    NSLog(@"slider value = %f", sender.value);
    
    [self.percentPackageGift setText: [NSString stringWithFormat:@"%d%%", (int)(sender.value * 100)]];
    [self.percentPackageNormal setText: [NSString stringWithFormat:@"%d%%", (int)((1 - sender.value) * 100)]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initUI];
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

- (IBAction)gotoShopCart:(id)sender {
    
    ViewController* nextView = [self.storyboard instantiateViewControllerWithIdentifier:@"shopcart"];
    
    [self.navigationController pushViewController:nextView animated:YES];
}

@end
