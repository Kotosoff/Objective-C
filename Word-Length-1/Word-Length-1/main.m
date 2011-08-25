//
//  main.m
//  Word-Length-1
//
//  Created by Sean Jones on 25/08/2011.
//  Copyright 2011 BrainPicnic. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    const char *words[4] = { "Joe-Bob \"Handyman\" Brown", "Jacksonville \"Sly\" Murphy", "Shinara Bain", "George \"Guitar\" Books" };
    int wordCount = 4;
    
    int i;
    for (i = 0; i < wordCount; i++) {
        NSLog(@"%s is %d characters long", words[i], strlen(words[i]));
    }
    
    return (0);
} // main

