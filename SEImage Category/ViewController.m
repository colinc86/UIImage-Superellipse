//
//  ViewController.m
//  SEImage Category
//
//  Created by Colin Campbell on 10/18/14.
//  Copyright (c) 2014 Colin Campbell. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Superellipse.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *testImage = [UIImage imageNamed:@"testImage"];
    [self.testImageView setImage:[testImage imageWithSuperellipseEdgeForDegree:5.0 andQuality:SUPERELLIPSE_QUALITY_HIGH]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
