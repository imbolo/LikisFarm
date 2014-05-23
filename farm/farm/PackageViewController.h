//
//  PackageViewController.h
//  farm
//
//  Created by liuyang on 14-5-20.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "ViewController.h"

@interface PackageViewController : BaseViewController
@property (weak, nonatomic) IBOutlet UILabel *percentSelf;
@property (weak, nonatomic) IBOutlet UILabel *percentSell;

@property (weak, nonatomic) IBOutlet UILabel *percentPackageGift;
@property (weak, nonatomic) IBOutlet UILabel *percentPackageNormal;

@end
