//
//  SignInViewController.m
//  farm
//
//  Created by liuyang on 14-5-21.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "SignInViewController.h"

@interface SignInViewController ()

@end

@implementation SignInViewController

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
    
    //background image
    UIImage* image = [UIImage imageNamed:@"signinBG.png"];
    self.view.layer.contents = (id) image.CGImage;
    //hide top bar
    self.navigationController.navigationBarHidden = YES;
    
    
//    [self.text addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
}

- (void)textFieldDidChange:(id)sender
{
    UITextField *textField = (UITextField *)sender;
    
    if (textField == self.textFiledUserName) {
        // Set to custom font if the textfield is cleared, else set it to system font
        // This is a workaround because secure text fields don't play well with custom fonts
        if (textField.text.length == 0) {
            textField.font = [UIFont fontWithName:@"OpenSans" size:textField.font.pointSize];
        }
        else {
            textField.font = [UIFont systemFontOfSize:textField.font.pointSize];
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
//    [_textFiledUserName setFont:[UIFont fontWithName:@"HiraginoSansGB-W3" size:12.0]];
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

- (void) prepareForSegue: (UIStoryboardSegue *) segue sender: (id) sender
{
    // configure the segue.
    if ( [[segue identifier] isEqualToString:@"loginSegue"] )
    {
        return;
//        SWRevealViewControllerSegue* rvcs = (SWRevealViewControllerSegue*) segue;
//        
//        SWRevealViewController* rvc = self.revealViewController;
//       
//        rvcs.performBlock = ^(SWRevealViewControllerSegue* rvc_segue, UIViewController* svc, UIViewController* dvc)
//        {
//            UINavigationController* nc = [[UINavigationController alloc] initWithRootViewController:dvc];
//            [rvc pushFrontViewController:nc animated:YES];
//        };
    }
}


- (IBAction)login:(id)sender {
    NSLog(@"login button clicked");
}

@end
