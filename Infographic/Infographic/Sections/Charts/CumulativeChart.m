//
//  CumulativeChart.m
//  Infographic
//
//  Created by Thomas Kelly on 23/06/2014.
//  Copyright (c) 2014 TKGames. All rights reserved.
//

#import "CumulativeChart.h"
#import "UIColor+InfoHex.h"

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
        self.xAxis.style.majorTickStyle.labelColor = [UIColor colorWithHex:@"545454" alpha:1];
        self.yAxis.style.majorTickStyle.labelColor = [UIColor colorWithHex:@"545454" alpha:1];
    }
    return self;
}

@end
