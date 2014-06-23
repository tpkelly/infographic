//
//  ViewController.m
//  Infographic
//
//  Created by Thomas Kelly on 23/06/2014.
//  Copyright (c) 2014 Scott Logic. All rights reserved.
//

#import "ViewController.h"

#import "CumulativeChart.h"
#import "CumulativeDatasource.h"
#import "StackedChart.h"
#import "StackedDatasource.h"

#import "GradientLayer.h"

@interface ViewController ()

@property (nonatomic, strong) CumulativeDatasource *cumulativeDatasource;
@property (nonatomic, strong) StackedDatasource *stackedDatasource;

@end

@implementation ViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    //Set up Cumulative chart
    CumulativeChart *cumulativeChart = [[CumulativeChart alloc] initWithFrame:CGRectMake(10, 10, 600, 400)];
    self.cumulativeDatasource = [CumulativeDatasource new];
    cumulativeChart.datasource = self.cumulativeDatasource;
    [self.scrollview addSubview:cumulativeChart];
    
    //Set up Stacked chart
    StackedChart *stackedChart = [[StackedChart alloc] initWithFrame:CGRectMake(400, 500, 600, 400)];
    self.stackedDatasource = [StackedDatasource new];
    stackedChart.datasource = self.stackedDatasource;
    [self.scrollview addSubview:stackedChart];
    
    self.scrollview.contentSize = CGSizeMake(CGRectGetMaxX(self.view.bounds), CGRectGetMaxY(stackedChart.frame));
    
    //Add gradient
    CALayer *gradient = [GradientLayer new];
    gradient.frame = self.scrollview.bounds;
    [self.view.layer insertSublayer:gradient atIndex:0];
}

@end
