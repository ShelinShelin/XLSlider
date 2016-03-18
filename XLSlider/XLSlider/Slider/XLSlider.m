//
//  XLSlider.m
//  XLSlider
//
//  Created by Shelin on 16/3/18.
//  Copyright © 2016年 GreatGate. All rights reserved.
//

#import "XLSlider.h"

static CGFloat panDistance;

@implementation XLSlider
{
    CALayer *_lineLayer;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if ([super initWithFrame:frame]) {
        UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panAction:)];
        [self addGestureRecognizer:pan];
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
        [self addGestureRecognizer:tap];
        
        _lineLayer = [CALayer layer];
        
        _lineLayer.backgroundColor = [UIColor grayColor].CGColor;
        _lineLayer.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
        [self.layer addSublayer:_lineLayer];
    }
    return self;
}

- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx {
    
    CGMutablePathRef path = CGPathCreateMutable();
    
    CGPathMoveToPoint(path, NULL, 0, 20);
    
    CGPathAddLineToPoint(path, nil, panDistance, 20);
    
    CGPathCloseSubpath(path);
    
    CGContextAddPath(ctx, path);
    //设置边框颜色
    CGContextSetRGBStrokeColor(ctx, 1, 0, 0, 1.0);
    //设置填充颜色
    CGContextSetRGBFillColor(ctx, 1, 0, 0, 1.0);
    //设置线条宽度
    CGContextSetLineWidth(ctx, 2.0f);
    
    CGContextAddEllipseInRect(ctx, CGRectMake(panDistance, 15, 10, 10));
    
    CGContextDrawPath(ctx, kCGPathFillStroke);
    //6.释放路径
    CGPathRelease(path);
}

#pragma mark - Gesture action

- (void)panAction:(UIPanGestureRecognizer *)panGesture {
    
    _lineLayer.delegate = self;
    [_lineLayer setNeedsDisplay];

    CGFloat detalX = [panGesture translationInView:self].x;
    panDistance += detalX;
    //Limited the sliding
    panDistance = panDistance >= 0 ? panDistance : 0;
    panDistance = panDistance <= self.frame.size.width ? panDistance : self.frame.size.width;
    [panGesture setTranslation:CGPointZero inView:self];
}

- (void)tapAction:(UITapGestureRecognizer *)tapGesture {
    
    _lineLayer.delegate = self;
    [_lineLayer setNeedsDisplay];
    
    CGPoint location = [tapGesture locationInView:self];
    panDistance = location.x;
}

@end
