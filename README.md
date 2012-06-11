ipad-parallax-examples
======================

There are simple examples of parallax using just UIView and UIScrollView

First example basic three layers parallax

using BasicParallaxScrollViewController with customed init function 


@interface BasicParallaxScrollViewController : UIViewController<UIScrollViewDelegate>

- (id)initWithFirstLayer:(UIImageView *) inputFirstView SecondLayer:(UIImageView *) inputSecondView WithSecondViewSpeed:(float) inputSecondViewSpeed ThirdLayer:(UIImageView *) inputThirdView WithThirdViewSpeed:(float) inputThirdViewSpeed;

@end

three UIImageViews and two move speed will be send into the fuction call and it very self explainatory.

for each uiiamgeview send to the function, init it with clearcolor background and many subviews can be to the uiimageview
so that they all on a same layer.