//
//  BasicParallaxScrollViewController.m
//  BasicThreeLayersParallax
//
//  Created by David Y. Chang on 6/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BasicParallaxScrollViewController.h"

@interface BasicParallaxScrollViewController ()
{
    UIScrollView * firstScrollView;
    UIImageView *firstView;
    UIImageView *secondView;
    UIImageView *thirdlView;
    
    float secondViewSpeed;
    float thirdViewSpeed;
    
    CGPoint secondViewOriginPoint;
    CGPoint thirdViewOriginPoint;
}

@end

@implementation BasicParallaxScrollViewController

- (id)initWithFirstLayer:(UIImageView *) inputFirstView SecondLayer:(UIImageView *) inputSecondView WithSecondViewSpeed:(float) inputSecondViewSpeed ThirdLayer:(UIImageView *) inputThirdView WithThirdViewSpeed:(float) inputThirdViewSpeed
{
    self = [super init];
    if (self) {
        self.view.backgroundColor = [UIColor blackColor];
     //   self.view.opaque = NO;
        firstView = inputFirstView;
        secondView = inputSecondView;
        thirdlView = inputThirdView;
        
        secondViewOriginPoint = secondView.frame.origin;
        thirdViewOriginPoint = thirdlView.frame.origin;
        
        secondViewSpeed = inputSecondViewSpeed;
        thirdViewSpeed = inputThirdViewSpeed;
        
        
        //Config scroll view property and set it as transparent
        
        firstScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 1024, 748)];
        firstScrollView.contentSize = CGSizeMake(2000, 748);
        firstScrollView.backgroundColor = [UIColor clearColor];
        firstScrollView.opaque = NO;
        firstScrollView.delegate = self;

        [firstScrollView addSubview:firstView];
        [self.view addSubview:firstScrollView];
        
        //set the order of three layers
        [self.view insertSubview:secondView belowSubview:firstScrollView];
        [self.view insertSubview:thirdlView belowSubview:secondView];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

// this is how parallax works
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"scrollview did scroll.");
    float movedX = scrollView.contentOffset.x;
    
    // compute the x offest for second and third.
    float moveX4Second = movedX*(secondViewSpeed);
    float moveX4Third = movedX*(thirdViewSpeed);
    
    //reset second and third frame according to computed x offset.
    CGRect secondViewFrame = secondView.frame;
    secondViewFrame.origin.x=secondViewOriginPoint.x-moveX4Second;
    [secondView setFrame:secondViewFrame];
    
    CGRect thirdViewFrame = thirdlView.frame;
    thirdViewFrame.origin.x=thirdViewOriginPoint.x-moveX4Third;
    [thirdlView setFrame:thirdViewFrame];    
    
}

@end
