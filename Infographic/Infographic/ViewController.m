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
    [self addSplitSection];
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
    UIView *divider = [[UIView alloc] initWithFrame:CGRectMake(boundWidth * 0.35, self.scrollview.contentSize.height + dividerPadding, boundWidth * 0.3, 1)];
    divider.backgroundColor = [UIColor lightGrayColor];
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
    cumulativeText.text = @"For the past 10 years, I have worked for over 13,000 hours at software development, with 3 years of real industry experience."
	                       "I have experienced many methodologies and processes outside of day-to-day coding,"
						   "particularly Agile Development, Design Patterns and User Experience (UX). Aside from coding,"
						   "I have expanded my knowledge through books and blogs, as seen in the 'Library' section below.";
    [cumulativeText sizeToFit];
    cumulativeText.center = CGPointMake(670, CGRectGetMidY(cumulativeChart.frame));
    //Round all values
    cumulativeText.frame = CGRectIntegral(cumulativeText.frame);
    [self.scrollview addSubview:cumulativeText];
    
    //Resize to be closely fitting
    self.scrollview.contentSize = CGSizeMake(CGRectGetMaxX(self.view.bounds), CGRectGetMaxY(cumulativeChart.frame));
}

-(void)addSplitSection
{
    UIView *vertical = [[UIView alloc] initWithFrame:CGRectMake(512, self.scrollview.contentSize.height + 10, 1, 300)];
    vertical.backgroundColor = [UIColor lightGrayColor];
    [self.scrollview addSubview:vertical];
    
    //Add left title
    UILabel *leftTitle = [UILabel new];
    leftTitle.font = [UIFont fontWithName:@"HelveticaNeue" size:24];
    leftTitle.text = @"ScottLogic/ShinobiControls";
    [leftTitle sizeToFit];
    leftTitle.center = CGPointMake(256, CGRectGetMinY(vertical.frame));
    [self.scrollview addSubview:leftTitle];
    
    //Add left text
    UITextView *leftText = [[UITextView alloc] initWithFrame:CGRectMake(50, self.scrollview.contentSize.height + 75, 412, 200)];
	leftText.text = @"\u2022 iOS component development across entire product range.\n"
	                 "\u2022 (Unofficial) UX expert amongst development team.\n"
	                 "\u2022 Social media manager.\n"
	                 "\u2022 Technical Support.\n"
	                 "\u2022 Marketting Comms copy-reviewer.\n"
	                 "\u2022 Continual presence on the office library book orders.\n"
	                 "\u2022 Blogger.\n"
	                 "\u2022 Maintainer of the Continuous Integration server.\n"
	                 "\u2022 Participant in numerous study groups."
    [self.scrollview addSubview:leftText];
    
    //Add right title
    UILabel *rightTitle = [UILabel new];
    rightTitle.font = [UIFont fontWithName:@"HelveticaNeue" size:24];
    rightTitle.text = @"Reciva";
    [rightTitle sizeToFit];
    rightTitle.center = CGPointMake(768, CGRectGetMinY(vertical.frame));
    [self.scrollview addSubview:rightTitle];
    
    //Add right text
    UITextView *rightText = [[UITextView alloc] initWithFrame:CGRectMake(572, self.scrollview.contentSize.height + 75, 412, 200)];
	rightText.text = @"\u2022 Client-side development of integrated device software.\n"
	                  "\u2022 Development of device drivers and features.\n"
					  "\u2022 Server-side development of radio services."
    [self.scrollview addSubview:rightText];
    
    //Resize to be closely fitting
    self.scrollview.contentSize = CGSizeMake(CGRectGetMaxX(self.view.bounds), CGRectGetMaxY(vertical.frame));
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
