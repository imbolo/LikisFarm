//
//  SideMenuViewController.h
//  farm
//
//  Created by liuyang on 14-5-14.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SideMenuViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *menuList;
@property (strong, nonatomic) NSArray *menuItems;

@end
