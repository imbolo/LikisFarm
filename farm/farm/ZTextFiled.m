//
//  ZTextFiled.m
//  farm
//
//  Created by liuyang on 14-5-21.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "ZTextFiled.h"

@implementation ZTextFiled

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void) drawPlaceholderInRect:(CGRect)rect {
    [[UIColor grayColor] setFill];
    [[self placeholder] drawInRect:rect withFont:[UIFont systemFontOfSize:14]];
}

@end
