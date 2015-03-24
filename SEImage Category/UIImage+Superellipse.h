//
//  UIImage+Superellipse.h
//  SEImage Category
//
//  Created by Colin Campbell on 10/18/14.
//  Copyright (c) 2014 Colin Campbell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Superellipse)

typedef enum {
    SUPERELLIPSE_QUALITY_LOW,
    SUPERELLIPSE_QUALITY_MEDIUM,
    SUPERELLIPSE_QUALITY_HIGH
} SuperellipseQuality;

- (UIImage *)imageWithSuperellipseEdgeForDegree:(CGFloat)degree andQuality:(SuperellipseQuality)quality;

@end
