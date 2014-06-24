//
//  CumulativeSection.m
//  Infographic
//
//  Created by Thomas Kelly on 24/06/2014.
//  Copyright (c) 2014 Scott Logic. All rights reserved.
//

#import "CumulativeSection.h"
#import "CumulativeChart.h"
#import "CumulativeDatasource.h"

@interface CumulativeSection ()

@property (nonatomic, strong) CumulativeDatasource *cumulativeDatasource;

@end

@implementation CumulativeSection

- (id)init
{
    self = [super initWithFrame:CGRectMake(0, 0, 1024, 400)];
    if (self) {
        //Set up Cumulative chart
        CumulativeChart *cumulativeChart = [[CumulativeChart alloc] initWithFrame:CGRectMake(10, 10, 700, 400)];
        cumulativeChart.userInteractionEnabled = NO;
        self.cumulativeDatasource = [CumulativeDatasource new];
        cumulativeChart.datasource = self.cumulativeDatasource;
        [self addSubview:cumulativeChart];
        
        //Add describing textview
        UITextView *cumulativeText = [[UITextView alloc] initWithFrame:CGRectMake(600, 150, 400, 150)];
        cumulativeText.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:14];
        cumulativeText.text = @"For the past 10 years, I have worked for over 13,000 hours at software development, with 3 years of real industry experience. "
        "I have experienced many methodologies and processes outside of day-to-day coding, "
        "particularly Agile Development, Design Patterns and User Experience (UX). Aside from coding, "
        "I have continued to expand my knowledge through books and blogs, as in the 'Library' section below.";
        [self addSubview:cumulativeText];
    }
    return self;
}

@end
