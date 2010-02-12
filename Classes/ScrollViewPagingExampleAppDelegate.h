//
//  ScrollViewPagingExampleAppDelegate.h
//  ScrollViewPagingExample
//
//  Created by Alexander Repty on 12.02.10.
//  Copyright Enough Software 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ScrollViewPagingExampleViewController;

@interface ScrollViewPagingExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ScrollViewPagingExampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ScrollViewPagingExampleViewController *viewController;

@end

