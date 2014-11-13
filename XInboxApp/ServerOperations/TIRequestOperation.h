//
//  TIRequestOperation.h
//  TriedBy
//
//  Created by Bruno Mazzo on 11/23/12.
//  Copyright (c) 2012 #tipis mobile. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TIRequestOperation : NSObject

@property(nonatomic) SEL action;
@property(nonatomic) SEL actionErro;
@property(nonatomic, retain) id target;

-(void)CancelRequest;
-(BOOL)StartRequest:(NSURLRequest*)request;

@end
