//
//  StackedChart.m
//  Infographic
//
//  Created by Thomas Kelly on 23/06/2014.
//  Copyright (c) 2014 Scott Logic. All rights reserved.
//

#import "StackedChart.h"

@implementation StackedChart

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame withPrimaryXAxisType:SChartAxisTypeCategory withPrimaryYAxisType:SChartAxisTypeNumber];
    if (self)
    {
        
    }
    return self;
}

@end
