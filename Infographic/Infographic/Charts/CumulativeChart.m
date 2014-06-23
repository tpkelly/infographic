//
//  CumulativeChart.m
//  Infographic
//
//  Created by Thomas Kelly on 23/06/2014.
//  Copyright (c) 2014 Scott Logic. All rights reserved.
//

#import "CumulativeChart.h"

@implementation CumulativeChart

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame withPrimaryXAxisType:SChartAxisTypeDateTime withPrimaryYAxisType:SChartAxisTypeNumber];
    if (self)
    {
        self.backgroundColor = [UIColor clearColor];
        self.plotAreaBackgroundColor = [UIColor clearColor];
        self.yAxis.title = @"Cumulative Hours";
        self.legend.hidden = NO;
        self.xAxis.majorTickFrequency = [SChartDateFrequency dateFrequencyWithYear:1];
    }
    return self;
}

@end
