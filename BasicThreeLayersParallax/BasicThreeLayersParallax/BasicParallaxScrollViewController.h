//
//  BasicParallaxScrollViewController.h
//  BasicThreeLayersParallax
//
//  Created by David Y. Chang on 6/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BasicParallaxScrollViewController : UIViewController<UIScrollViewDelegate>
{
    NSArray * charactors;
    
}

@property (nonatomic, strong) NSArray * charactors;


- (id)initWithFirstLayer:(UIImageView *) inputFirstView SecondLayer:(UIImageView *) inputSecondView WithSecondViewSpeed:(float) inputSecondViewSpeed ThirdLayer:(UIImageView *) inputThirdView WithThirdViewSpeed:(float) inputThirdViewSpeed;

@end
