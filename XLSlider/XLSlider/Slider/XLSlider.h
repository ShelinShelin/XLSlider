//
//  XLSlider.h
//  XLSlider
//
//  Created by Shelin on 16/3/18.
//  Copyright © 2016年 GreatGate. All rights reserved.
//

#import <UIKit/UIKit.h>
@class XLSlider;

typedef void (^SliderValueChangeBlock) (XLSlider *slider);
typedef void (^FinishChangeBlock) (void);

@interface XLSlider : UIView

@property (nonatomic, assign) CGFloat value;        /* From 0 to 1 */
@property (nonatomic, assign) CGFloat middleValue;  /* From 0 to 1 */
@property (nonatomic, copy) SliderValueChangeBlock valueChangeBlock;
@property (nonatomic, copy) FinishChangeBlock finishChangeBlock;

@end
