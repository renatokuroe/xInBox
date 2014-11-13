//
//  ServerOperations.h
//  Ezzi
//
//  Created by Renato Kuroe on 01/02/13.
//  Copyright (c) 2013 Tipis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TIRequestOperation.h"

@interface ServerOperations : TIRequestOperation

-(BOOL)method:(NSString*)param;
-(BOOL)searchList:(NSString*)param;

@end
