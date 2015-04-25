//
//  AppDelegate.m
//  NumberProblems-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

static int multiply = 8;
static int divisor = 4;

@interface AppDelegate ()

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    [self iterateCount: 4];
    
    
    return YES;
}

- (void) iterateCount:(int)number
{
   int multiplyTotal = [self multiply:number];
    NSLog(@"Multiplied %d by %d is equal to %d", number, multiply, multiplyTotal);
    
    float dividedTotal = [self divided:number];
    NSLog(@"Divided %d by %d is equal to %f", number, divisor, dividedTotal);
    
    if (number > 0) {
        NSLog(@"Iterate %d", number);
        number --;
        [self iterateCount:number];
        
    }
}

- (int) multiply:(int)numCalc
{
    return numCalc * multiply;
}

- (float) divided:(int)numDiv
{
    return numDiv / divisor;
}


@end
