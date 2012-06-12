//
//  SetParametersViewController.m
//  BasicThreeLayersParallax
//
//  Created by David Y. Chang on 6/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SetParametersViewController.h"
#import "BasicParallaxScrollViewController.h"

@interface SetParametersViewController ()
{
    UIImageView * firstView;
    UIImageView * secondView;
    UIImageView * thirdView;
}

@end

@implementation SetParametersViewController
@synthesize secondLayerSpeedSlider, thirdLayerSpeedSlider, startButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)initThreeLayers
{
    firstView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 2000, 700)];    
    firstView.backgroundColor = [UIColor clearColor];
    UIImageView * beachppl = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"beachppl.jpeg"]];
    [firstView addSubview:beachppl];
    beachppl.center = CGPointMake(600, 500);

    UIImageView * beachgirl = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"beachgirl1.jpeg"]];
    [firstView addSubview:beachgirl];
    beachgirl.center = CGPointMake(900, 500);
    
    UIImageView * beachboy = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"beachboy.jpeg"]];
    [firstView addSubview:beachboy];
    beachboy.center = CGPointMake(1600, 500);
    

    secondView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 2000, 700)];
    secondView.backgroundColor=[UIColor clearColor];
    UIImageView * cloud1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cloud.jpeg"]];
    [secondView addSubview:cloud1];
    cloud1.center = CGPointMake(300, 100);
    
    UIImageView * cloud2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cloud.jpeg"]];
    [secondView addSubview:cloud2];
    cloud2.center = CGPointMake(750, 150);    

    thirdView = [[UIImageView alloc] initWithFrame:CGRectMake(-100, 0, 2000, 700)];
    UIImageView * background = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"emptybeachBig.jpg"]];
    [thirdView addSubview:background];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initThreeLayers];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

- (IBAction)startButtonPressed
{
    BasicParallaxScrollViewController *aBasicParallexController = [[BasicParallaxScrollViewController alloc] initWithFirstLayer:firstView SecondLayer:secondView WithSecondViewSpeed:secondLayerSpeedSlider.value ThirdLayer:thirdView WithThirdViewSpeed:thirdLayerSpeedSlider.value];
    [self.navigationController pushViewController:aBasicParallexController animated:YES];

    
    
}

@end







