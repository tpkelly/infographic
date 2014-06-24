//
//  StackedChart.m
//  Infographic
//
//  Created by Thomas Kelly on 23/06/2014.
//  Copyright (c) 2014 TKGames. All rights reserved.
//

#import "StackedChart.h"
#import "UIColor+InfoHex.h"

@implementation StackedChart

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame withPrimaryXAxisType:SChartAxisTypeCategory withPrimaryYAxisType:SChartAxisTypeNumber];
    if (self)
    {
        self.backgroundColor = [UIColor clearColor];
        self.plotAreaBackgroundColor = [UIColor clearColor];
        self.legend.hidden = NO;
        self.title = @"Breakdown of Language experience by Workplace";
        self.titleCentresOn = SChartTitleCentresOnChart;
        self.xAxis.style.majorTickStyle.labelColor = [UIColor colorWithHex:@"545454" alpha:1];
        self.yAxis.style.majorTickStyle.labelColor = [UIColor colorWithHex:@"545454" alpha:1];
    }
    return self;
}

@end
