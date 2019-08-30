//
//  TLMoreKBHelper.m
//  TLChat
//
//  Created by 李伯坤 on 16/2/18.
//  Copyright © 2016年 李伯坤. All rights reserved.
//

#import "TLMoreKBHelper.h"
#import "TLMoreKeyboardItem.h"

@implementation TLMoreKBHelper

- (id)init
{
    if (self = [super init]) {
        self.chatMoreKeyboardData = [[NSMutableArray alloc] init];
        [self p_initTestData];
    }
    return self;
}

- (void)p_initTestData
{
    TLMoreKeyboardItem *imageItem = [TLMoreKeyboardItem createByType:TLMoreKeyboardItemTypeImage
                                                               title:@"相册"
                                                           imagePath:@"moreKB_image"];
    TLMoreKeyboardItem *cameraItem = [TLMoreKeyboardItem createByType:TLMoreKeyboardItemTypeCamera
                                                                title:@"相机"
                                                            imagePath:@"moreKB_video"];
    TLMoreKeyboardItem *fileCallItem = [TLMoreKeyboardItem createByType:TLMoreKeyboardItemTypeFile
                                                                   title:@"文件"
                                                               imagePath:@"moreKB_wallet"];
    TLMoreKeyboardItem *businessCardItem = [TLMoreKeyboardItem createByType:TLMoreKeyboardItemTypeBusinessCard
                                                                      title:@"个人名片"
                                                                  imagePath:@"moreKB_friendcard"];
    TLMoreKeyboardItem *positionItem = [TLMoreKeyboardItem createByType:TLMoreKeyboardItemTypePosition
                                                                  title:@"位置"
                                                              imagePath:@"moreKB_location"];
    [self.chatMoreKeyboardData addObjectsFromArray:@[imageItem, cameraItem, fileCallItem, businessCardItem, positionItem]];
}

@end
