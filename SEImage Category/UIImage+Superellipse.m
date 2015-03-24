//
//  UIImage+Superellipse.m
//  SEImage Category
//
//  Created by Colin Campbell on 10/18/14.
//  Copyright (c) 2014 Colin Campbell. All rights reserved.
//

#import "UIImage+Superellipse.h"

@implementation UIImage (Superellipse)

- (UIImage *)imageWithSuperellipseEdgeForDegree:(CGFloat)degree andQuality:(SuperellipseQuality)quality
{
    UIGraphicsBeginImageContext(self.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGRect imageRect = CGRectMake(0, 0, self.size.width, self.size.height);
    
    CGContextSaveGState(context);
    [self drawInRect:imageRect];

    CGPoint midpoint = CGPointMake(self.size.width / 2.0f, self.size.height / 2.0f);
    CGFloat incriment = 1.0f;
    if (quality == SUPERELLIPSE_QUALITY_MEDIUM) incriment = 0.5;
    else if (quality == SUPERELLIPSE_QUALITY_HIGH) incriment = 0.25;
    
    for (float i = 0; i < self.size.width; i += incriment) {
        for (float j = 0; j < self.size.height; j += incriment) {
            CGFloat x = i - midpoint.x;
            CGFloat y = j - midpoint.y;
            CGFloat radius = powf(fabsf(x / midpoint.x), degree) + powf(fabsf(y / midpoint.y), degree);
            if (radius >= 1) {
                CGContextSetRGBFillColor(context, 1.0f, 1.0f, 1.0f, 1.0f);
                CGContextFillRect(context, CGRectMake(i, j, incriment * 3, incriment * 3));
                //CGContextClearRect(context, CGRectMake(i ,j , 1.0f, 1.0f));
            }
        }
    }
    
    CGContextRestoreGState(context);
    return UIGraphicsGetImageFromCurrentImageContext();
}

@end
