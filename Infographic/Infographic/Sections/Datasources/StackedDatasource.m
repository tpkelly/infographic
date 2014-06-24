//
//  StackedDatasource.m
//  Infographic
//
//  Created by Thomas Kelly on 23/06/2014.
//  Copyright (c) 2014 Scott Logic. All rights reserved.
//

#import "StackedDatasource.h"

@interface StackedDatasource ()

@property (nonatomic, strong) NSMutableDictionary *data;
@property (nonatomic, strong) NSArray *categories;
@property (nonatomic, strong) NSArray *seriesNames;

@end

@implementation StackedDatasource

-(id)init
{
    self = [super init];
    if (self)
    {
        self.seriesNames = @[@"Java", @"C#", @"Objective-C", @"C", @"Swift", @"Other"];
        self.categories = @[@"ScottLogic", @"Uni (Y4)", @"Reciva", @"Uni (Y3)", @"Uni (Y2)", @"Uni (Y1)", @"A-Level"];
        
        NSArray *values = @[@0, @40, @45, @25, @75, @30, @0, // Java
                            @0, @0, @0, @45, @0, @0, @0,     // C#
                            @89, @20, @20, @0, @0, @0, @0,   // Obj-C
                            @0, @10, @30, @20, @25, @60, @0, // C
                            @3, @0, @0, @0, @0, @0, @0,      // Swift
                            @8, @30, @5, @10, @0, @10, @100    // Other
                            ];
        
        self.data = [NSMutableDictionary dictionary];
        int valueIndex = 0;
        for (NSString *seriesName in self.seriesNames)
        {
            //Create new dictionary per series
            NSMutableDictionary *seriesDict = [NSMutableDictionary dictionary];
            [self.data setObject:seriesDict forKey:seriesName];
            
            for (NSString *category in self.categories)
            {
                //Populate data for a given series
                [seriesDict setObject:values[valueIndex++] forKey:category];
            }
        }
    }
    return self;
}

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
    columnSeries.title = self.seriesNames[index];
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
