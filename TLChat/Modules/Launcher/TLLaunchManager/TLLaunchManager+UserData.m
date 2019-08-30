//
//  TLLaunchManager+UserData.m
//  TLChat
//
//  Created by 李伯坤 on 2017/9/19.
//  Copyright © 2017年 李伯坤. All rights reserved.
//

#import "TLLaunchManager+UserData.h"
#import "TLMineEventStatistics.h"

@implementation TLLaunchManager (UserData)

- (void)initUserData
{
    NSNumber *lastRunDate = [[NSUserDefaults standardUserDefaults] objectForKey:@"lastRunDate"];
    
    if (lastRunDate == nil) {
    
    }
    
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:lastRunDate.doubleValue];
    NSNumber *sponsorStatus = [[NSUserDefaults standardUserDefaults] objectForKey:@"sponsorStatus"];
    NSLog(@"今天第%ld次进入", (long)sponsorStatus.integerValue);
    if ([date isSameDay:[NSDate date]]) {
        [[NSUserDefaults standardUserDefaults] setObject:@(sponsorStatus.integerValue + 1) forKey:@"sponsorStatus"];
    }
    else {
        [[NSUserDefaults standardUserDefaults] setObject:@([[NSDate date] timeIntervalSince1970]) forKey:@"lastRunDate"];
        if (sponsorStatus.integerValue != -1) {
            [[NSUserDefaults standardUserDefaults] setObject:@(1) forKey:@"sponsorStatus"];
        }
    }
}

@end
