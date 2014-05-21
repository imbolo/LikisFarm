//
//  Config.m
//  farm
//
//  Created by liuyang on 14-5-21.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "Config.h"

@implementation Config

+ (Config*) getInstance
{
    static Config *instance;
    
    @synchronized(self)
    {
        if (!instance)
            instance = [[Config alloc] init];
        
        return instance;
    }
    
}

@end
