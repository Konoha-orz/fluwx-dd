//
//  SendMessageToWXReq+requestWithTextOrMediaMessage.h
//  SDKSample
//
//  Created by Jeason on 15/7/14.
//
//

#import <WechatOpenSDK_Fuck/WXApiObject.h>

@interface SendMessageToWXReq (requestWithTextOrMediaMessage)

+ (SendMessageToWXReq *)requestWithText:(NSString *)text
                         OrMediaMessage:(WXMediaMessage *)message
                                  bText:(BOOL)bText
                                InScene:(enum WXScene)scene;
@end
