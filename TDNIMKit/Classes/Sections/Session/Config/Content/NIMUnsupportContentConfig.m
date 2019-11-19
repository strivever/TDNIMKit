//
//  NIMUnsupportContentConfig.m
//  NIMKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

#import "NIMUnsupportContentConfig.h"
#import "NIMKit.h"

@implementation NIMUnsupportContentConfig
- (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
{
    return CGSizeMake(100.f, 40.f);
}

- (NSString *)cellContent:(NIMMessage *)message
{
    return @"NIMSessionUnknowContentView";
}

- (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
{
    BOOL isOutgoingMsg;
    if (message.remoteExt[@"spokesman"]) {
        isOutgoingMsg = [message.remoteExt[@"spokesman"] isEqualToString:@"d"];
    } else {
        isOutgoingMsg = message.isOutgoingMsg;
    }
    NIMKitSettings *settings = isOutgoingMsg ? [NIMKit sharedKit].config.rightBubbleSettings : [NIMKit sharedKit].config.leftBubbleSettings;
    return settings.unsupportSetting.contentInsets;
}

@end
