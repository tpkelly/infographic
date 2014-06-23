//
//  StackedDatasource.m
//  Infographic
//
//  Created by Thomas Kelly on 23/06/2014.
//  Copyright (c) 2014 Scott Logic. All rights reserved.
//

#import "StackedDatasource.h"

@interface StackedDatasource ()

@property (nonatomic, strong) NSDictionary *data;
@property (nonatomic, strong) NSArray *categories;
@property (nonatomic, strong) NSArray *seriesNames;

@end

@implementation StackedDatasource

#pragma mark - Datasource

-(NSInteger)numberOfSeriesInSChart:(ShinobiChart *)chart
{
    return self.data.count;
}

-(NSInteger)sChart:(ShinobiChart *)chart numberOfDataPointsForSeriesAtIndex:(NSInteger)seriesIndex
{
    NSString *seriesKey = self.seriesNames[seriesIndex];
    NSDictionary *subdata = self.data[seriesKey];
    return subdata.count;
}

-(SChartSeries *)sChart:(ShinobiChart *)chart seriesAtIndex:(NSInteger)index
{
    SChartColumnSeries *columnSeries = [SChartColumnSeries new];
    columnSeries.stackIndex = @0;
    return columnSeries;
}

-(id<SChartData>)sChart:(ShinobiChart *)chart dataPointAtIndex:(NSInteger)dataIndex forSeriesAtIndex:(NSInteger)seriesIndex
{
    //Extract series dictionary from "dictionary of dictionaries"
    NSString *seriesKey = self.seriesNames[seriesIndex];
    NSDictionary *subdata = self.data[seriesKey];
    
    //Get the values for the final id<SChartData>
    NSString *categoryKey = self.categories[dataIndex];
    NSNumber *data = subdata[categoryKey];
    
    //Format as a datapoint
    SChartDataPoint *dp = [SChartDataPoint new];
    dp.xValue = categoryKey;
    dp.yValue = data;
    
    return dp;
}

@end
