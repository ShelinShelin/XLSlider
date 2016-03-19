# XLSlider
a Slider 
一个使用简单的三段进度滑块，可以用于媒体进度，总时长，播放进度，网络缓冲进度，支持点击，手势拖拽改变进度值。
```
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _slider = [[XLSlider alloc] initWithFrame:CGRectMake(0, 300, self.view.frame.size.width, 40)];
    _slider.sliderColor = [UIColor redColor];
    _slider.middleColor = [UIColor redColor];
    _slider.maxColor = [UIColor whiteColor];
    _slider.lineWidth = 3.0f;
    _slider.sliderDiameter = 20.0f;
    [self.view addSubview:_slider];
    
    _slider.valueChangeBlock = ^(XLSlider *slider) {
        NSLog(@"valueChangeBlock --- %f", slider.value);
    };
    _slider.finishChangeBlock = ^(XLSlider *slider) {
        NSLog(@"finishChangeBlock -- %f", slider.value);
    };
}

```
