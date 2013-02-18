//
//  DataRequest.h
//  ZLEmploy
//
//  Created by Ibokan on 13-2-18.
//  Copyright (c) 2013年 alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataRequest : NSObject <NSURLConnectionDelegate>
{
    NSMutableData *mutableData;
}
@property(nonatomic,retain)NSMutableData * mutableData;


-(void) requestWithURL:(NSString *) urlString HttpMethod:(NSString *) method Params:(NSDictionary *) param;


@end
