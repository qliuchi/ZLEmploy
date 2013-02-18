//
//  DataRequest.m
//  ZLEmploy
//
//  Created by Ibokan on 13-2-18.
//  Copyright (c) 2013年 alex. All rights reserved.
//

#import "DataRequest.h"
#import "URLEncode.h"
#import "XMLReader.h"
#import "NSString+getMD5String.h"
@implementation DataRequest

@synthesize mutableData;

-(void) requestWithURL:(NSString *) urlString HttpMethod:(NSString *) method Params:(NSDictionary *) param
{
  //  NSString * emailName = @"1261061876@qq.com";
  // NSString * passWord = @"tanwen";
    
  //  emailName = [URLEncode encodeUrlStr:emailName];
  //  passWord = [URLEncode encodeUrlStr:passWord];
    
  //  NSString *url = [NSString stringWithFormat:@"http://wapinterface.zhaopin.com/iphone/myzhaopin/loginmgr/login.aspx?email=%@&password=%@&f=p",emailName,passWord];
   // NSString * url1 =[NSString stringWithFormat:@"http://wapinterface.zhaopin.com/iphone/search/searchjob.aspx?type=0&schJobType=%@&sort=%@&pagesize=10&page=1&f=p",[URLEncode encodeUrlStr:@"销售"],[URLEncode encodeUrlStr:@"相关度"]];
    
   // NSString * md5 = [NSString getMD5String:url1];
   // url1 = [url1 stringByAppendingFormat:@"%@",md5];
   // NSLog(@"url1 = %@",url1);
    
    NSString *md5 = [NSString getMD5String:urlString];
    NSString *url1 = [urlString stringByAppendingFormat:@"%@",md5];
    NSURLRequest * req = [NSURLRequest requestWithURL:[NSURL URLWithString:url1]];
    [NSURLConnection connectionWithRequest:req delegate:self];
    

}

-(void) connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    self.mutableData = [[NSMutableData alloc] init];
}

-(void) connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [self.mutableData appendData:data];
}

-(void) connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSError * error = [[NSError new]autorelease];
    NSDictionary * dic=[[[NSDictionary alloc]init] autorelease];
    dic = [XMLReader dictionaryForXMLData:self.mutableData error:&error];
    if (dic==nil)
    {
        NSLog(@"error=%@",[error localizedDescription]);
    }
    NSLog(@"dic=_________________%@",dic);
    NSMutableDictionary * root=[dic valueForKey:@"root"];
    NSMutableDictionary * message=[root valueForKey:@"message"];
    NSMutableString * str=[message valueForKey:@"text"];
    NSLog(@"text=%@",str);
    
}


@end
