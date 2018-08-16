# ButtonCorner
设置Button的圆角效果

## 设置button所有边为圆角
```objc
UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:button.bounds cornerRadius:10.0];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = button.bounds;
    maskLayer.path = maskPath.CGPath;
    button.layer.mask = maskLayer;
```

## 设置button部分边为圆角
```objc
 UIBezierPath *maskPath2 = [UIBezierPath bezierPathWithRoundedRect:button2.bounds byRoundingCorners:UIRectCornerTopLeft | UIRectCornerBottomLeft cornerRadii:CGSizeMake(10, 10)];
    CAShapeLayer *maskLayer2 = [[CAShapeLayer alloc] init];
    maskLayer2.frame = button.bounds;
    maskLayer2.path = maskPath2.CGPath;
    button2.layer.mask = maskLayer2;
```
