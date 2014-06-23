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
    
    self.titleLabel.text = @"Test my title";

    [self addCumulativeChart];
    [self addDivider];
    [self addStackedChart];
    
    //Add gradient
    CALayer *gradient = [GradientLayer new];
    gradient.frame = CGRectMake(0, 0, 1024, 768);
    //[self.view.layer insertSublayer:gradient atIndex:0];
}

-(void)addDivider
{
    CGFloat boundWidth = 1024;
    CGFloat dividerPadding = 50;
    UIView *divider = [[UIView alloc] initWithFrame:CGRectMake(boundWidth * 0.15, self.scrollview.contentSize.height + dividerPadding, boundWidth * 0.7, 1)];
    divider.backgroundColor = [UIColor blackColor];
    [self.scrollview addSubview:divider];

    //Resize to be closely fitting
    self.scrollview.contentSize = CGSizeMake(CGRectGetMaxX(self.view.bounds), CGRectGetMaxY(divider.frame) + dividerPadding);
}

-(void)addCumulativeChart
{
    //Set up Cumulative chart
    CumulativeChart *cumulativeChart = [[CumulativeChart alloc] initWithFrame:CGRectMake(10, self.scrollview.contentSize.height + 10, 700, 400)];
    cumulativeChart.userInteractionEnabled = NO;
    self.cumulativeDatasource = [CumulativeDatasource new];
    cumulativeChart.datasource = self.cumulativeDatasource;
    [self.scrollview addSubview:cumulativeChart];
    
    //Add describing textview
    UITextView *cumulativeText = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, 300, 200)];
    cumulativeText.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:14];
    cumulativeText.text = @"\u2022 Over 13000 hours of software experience\n"
                           "   over 10 years.\n"
                           "\u2022 3 years of industry experience.\n"
                           "\u2022 Find some better things to say";
    [cumulativeText sizeToFit];
    cumulativeText.center = CGPointMake(670, CGRectGetMidY(cumulativeChart.frame));
    //Round all values
    cumulativeText.frame = CGRectIntegral(cumulativeText.frame);
    [self.scrollview addSubview:cumulativeText];
    
    //Resize to be closely fitting
    self.scrollview.contentSize = CGSizeMake(CGRectGetMaxX(self.view.bounds), CGRectGetMaxY(cumulativeChart.frame));
}

-(void)addStackedChart
{
    //Set up Cumulative chart
    StackedChart *stackedChart = [[StackedChart alloc] initWithFrame:CGRectMake(400, self.scrollview.contentSize.height + 10, 600, 400)];
    stackedChart.userInteractionEnabled = NO;
    self.stackedDatasource = [StackedDatasource new];
    stackedChart.datasource = self.stackedDatasource;
    [self.scrollview addSubview:stackedChart];
    
    //Resize to be closely fitting
    self.scrollview.contentSize = CGSizeMake(CGRectGetMaxX(self.view.bounds), CGRectGetMaxY(stackedChart.frame));
}

@end
