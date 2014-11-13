//
//  ServerOperations.m
//  Ezzi
//
//  Created by Renato Kuroe on 01/02/13.
//  Copyright (c) 2013 Tipis. All rights reserved.
//

#import "ServerOperations.h"
#import "TIRequestOperation.h"
#import "TIRequest.h"

NSString * const URL = @"";
NSString * const URLsearchList = @"http://tmsoft.com.br:10777/api.php?cmd=search&query=";


@implementation ServerOperations

// Método exemplo para os POSTs
-(BOOL)method:(NSString*)param{
    NSURL* url = [NSURL URLWithString:[NSString stringWithFormat:@"%@", URL]];
    NSMutableURLRequest* postRequest = [NSMutableURLRequest requestWithURL:url];
    
    NSDictionary* jsonData = @{ @"param" : param,
                                };
    
    [postRequest setHTTPMethod:@"POST"];
    
    NSError *error;
    
    NSData *postdata = [NSJSONSerialization dataWithJSONObject:jsonData options:0 error:&error];
    [postRequest setHTTPBody:postdata];
    [postRequest setValue:[NSString stringWithFormat:@"%lu", (unsigned long)[postdata length]] forHTTPHeaderField:@"Content-Length"];
    [postRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    
    return [self StartRequest:postRequest];
}


-(BOOL)searchList:(NSString*)param{
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@%@", URLsearchList, param]];
    
    NSMutableURLRequest *postRequest = [NSMutableURLRequest requestWithURL:url];
    
    [postRequest setHTTPMethod:@"POST"];
    
    return [self StartRequest:postRequest];
}


@end
