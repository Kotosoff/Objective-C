//
//  main.m
//  Count-1
//
//  Created by Sean Jones on 25/08/2011.
//  Copyright 2011 BrainPicnic. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    int count = 10;
    
    NSLog(@"The numbers from 1 to 5:");
    
    int i;
    for (i = 1; i <= count; i ++) {
        NSLog(@"%d\n", i);
    }
    
    return (0);
} // main

