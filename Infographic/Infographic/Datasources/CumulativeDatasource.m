//
//  CumulativeDatasource.m
//  Infographic
//
//  Created by Thomas Kelly on 23/06/2014.
//  Copyright (c) 2014 Scott Logic. All rights reserved.
//

#import "CumulativeDatasource.h"

@interface CumulativeDatasource ()

@property (nonatomic, strong) NSDictionary *data;

@end

@implementation CumulativeDatasource

#pragma mark - Datasource methods

-(NSInteger)numberOfSeriesInSChart:(ShinobiChart *)chart
{
    return self.data.count;
}

-(NSInteger)sChart:(ShinobiChart *)chart numberOfDataPointsForSeriesAtIndex:(NSInteger)seriesIndex
{
    return 2;
}

-(SChartSeries *)sChart:(ShinobiChart *)chart seriesAtIndex:(NSInteger)index
{
    return [SChartLineSeries new];
}

-(id<SChartData>)sChart:(ShinobiChart *)chart dataPointAtIndex:(NSInteger)dataIndex forSeriesAtIndex:(NSInteger)seriesIndex
{
    SChartDataPoint *dp = [SChartDataPoint new];
    
    dp.xValue = @(dataIndex);
    dp.yValue = @(dataIndex);
    
    return dp;
}

@end
