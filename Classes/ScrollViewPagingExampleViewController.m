//
//  ScrollViewPagingExampleViewController.m
//  ScrollViewPagingExample
//
//  Created by Alexander Repty on 12.02.10.
//  Copyright Enough Software 2010. All rights reserved.
//

#import "ScrollViewPagingExampleViewController.h"

@implementation ScrollViewPagingExampleViewController

#pragma mark -
#pragma mark Construction & Destruction

- (void)dealloc {
	[_scrollView release];
	[super dealloc];
}

#pragma mark -
#pragma mark UIViewController methods

- (void)viewDidLoad {
	_scrollView.clipsToBounds = NO;
	_scrollView.pagingEnabled = YES;
	_scrollView.showsHorizontalScrollIndicator = NO;
	
	CGFloat contentOffset = 0.0f;
	NSArray *imageFilenames = [NSArray arrayWithObjects:@"mborsten.jpg",
							   @"arepty.jpg",
							   @"bmf.jpg",
							   @"mgprot.jpg",
							   @"sgaw.jpg",
							   @"tarasis.jpg",
							   @"uliwitness.jpg",
							   @"cgodefroy.jpg",
							   nil];

	for (NSString *singleImageFilename in imageFilenames) {
		CGRect imageViewFrame = CGRectMake(contentOffset, 0.0f, _scrollView.frame.size.width, _scrollView.frame.size.height);

		UIImageView *imageView = [[UIImageView alloc] initWithFrame:imageViewFrame];
		imageView.image = [UIImage imageNamed:singleImageFilename];
		imageView.contentMode = UIViewContentModeCenter;
		[_scrollView addSubview:imageView];
		[imageView release];

		contentOffset += imageView.frame.size.width;
		_scrollView.contentSize = CGSizeMake(contentOffset, _scrollView.frame.size.height);
	}
}

@end
