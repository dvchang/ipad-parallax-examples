//
//  SetParametersViewController.h
//  BasicThreeLayersParallax
//
//  Created by David Y. Chang on 6/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BasicParallaxScrollViewController;

@interface SetParametersViewController : UIViewController
{
    IBOutlet UISlider * secondLayerSpeedSlider;
    IBOutlet UISlider * thirdLayerSpeedSlider;
    IBOutlet UIButton * startButton;
}
@property (nonatomic, strong) IBOutlet UISlider * secondLayerSpeedSlider;
@property (nonatomic, strong) IBOutlet UISlider * thirdLayerSpeedSlider;
@property (nonatomic, strong) IBOutlet UIButton * startButton;
- (IBAction) startButtonPressed;
@end
