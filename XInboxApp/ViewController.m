//
//  ViewController.m
//  XInboxApp
//
//  Created by Renato Kuroe on 12/11/14.
//  Copyright (c) 2014 Renato Toshio Kuroe. All rights reserved.
//

#import "ViewController.h"
#import "ServerOperations.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self getData];
    
}

- (void)getData {
    
    ServerOperations *serverOp = [[ServerOperations alloc]init];
    [serverOp searchList:@"net"];
    [serverOp setTarget:self];
    [serverOp setAction:@selector(didReceiveData:)];
    [serverOp setActionErro:@selector(didReceiveError:)];
    
}

- (void)didReceiveData:(NSData*)data {
    
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    
}

- (void)didReceiveError:(NSError*)error {

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
