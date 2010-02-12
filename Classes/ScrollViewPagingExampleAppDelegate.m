//
//  ScrollViewPagingExampleAppDelegate.m
//  ScrollViewPagingExample
//
//  Created by Alexander Repty on 12.02.10.
//  Copyright Enough Software 2010. All rights reserved.
//

#import "ScrollViewPagingExampleAppDelegate.h"
#import "ScrollViewPagingExampleViewController.h"

@implementation ScrollViewPagingExampleAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
