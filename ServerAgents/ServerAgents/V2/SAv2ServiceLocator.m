//
//  SAv2ServiceLocator.m
//  ServerAgents
//
//  Created by Yao Melo on 7/18/13.
//  Copyright (c) 2013 Shanghai. All rights reserved.
//

#import "SAv2ServiceLocator.h"

@implementation SAv2ServiceLocator
@synthesize baseUrl = _baseUrl;

-(NSString *)lookupUrlForService:(NSString *)serviceType
{
//    NSString* relativePath = @"";
//    if([serviceType isEqualToString:SERVICE_LOGIN])
//    {
//        relativePath = @"login";
//    }
    if ([serviceType isEqualToString:SERVICE_LOGIN]) {
        return [@"http://helpsource-dev.thcg.net:1337/ws/" stringByAppendingString:serviceType];
    } else if ([serviceType isEqualToString:SERVICE_USERLIST]) {
        return [@"http://helpsource-dev.thcg.net:1337/ws/" stringByAppendingString:serviceType];
    } else {
        return self.baseUrl;
    }
//    return [self.baseUrl stringByAppendingFormat:@"/%@",relativePath];
}

@end
