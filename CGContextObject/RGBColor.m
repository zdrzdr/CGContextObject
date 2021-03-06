//
//  RGBColor.m
//  DrawRect
//
//  Created by YouXianMing on 15/7/2.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "RGBColor.h"

@implementation RGBColor

+ (instancetype)colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha {
    
    RGBColor *color = [[[self class] alloc] init];
    
    color.red   = red;
    color.green = green;
    color.blue  = blue;
    color.alpha = alpha;
    
    return color;
}

+ (instancetype)colorWithUIColor:(UIColor *)color {

    RGBColor *tmpColor = [[[self class] alloc] init];
    
    CGFloat red   = 0;
    CGFloat green = 0;
    CGFloat blue  = 0;
    CGFloat alpha = 0;
    
    [color getRed:&red green:&green blue:&blue alpha:&alpha];
    
    tmpColor.red   = red;
    tmpColor.green = green;
    tmpColor.blue  = blue;
    tmpColor.alpha = alpha;
    
    return tmpColor;
}

+ (instancetype)randomColor {

    RGBColor *color = [[[self class] alloc] init];
    
    color.red   = arc4random() % 256 / 255.f;
    color.green = arc4random() % 256 / 255.f;
    color.blue  = arc4random() % 256 / 255.f;
    color.alpha = arc4random() % 256 / 255.f;
    
    return color;
}

@end
