//
//  CumulativeDatasource.m
//  Infographic
//
//  Created by Thomas Kelly on 23/06/2014.
//  Copyright (c) 2014 TKGames. All rights reserved.
//

#import "CumulativeDatasource.h"

@interface CumulativeDatasource ()

@property (nonatomic, strong) NSDictionary *data;
@property (nonatomic, strong) NSArray *series;
@end

@implementation CumulativeDatasource

-(id)init
{
    self = [super init];
    if (self)
    {
        NSDateFormatter *dateFormatter = [NSDateFormatter new];
        dateFormatter.dateFormat = @"MMM-YY";
        
        self.series = @[@"Scott Logic", @"University", @"Reciva", @"A-Level"];
        self.data = @{@"Scott Logic" : @{[dateFormatter dateFromString:@"Aug-12"] : @10070,
                                         [dateFormatter dateFromString:@"Jul-14"] : @13526},
                      @"University" : @{[dateFormatter dateFromString:@"Sep-07"] : @1440,
                                        [dateFormatter dateFromString:@"Jul-10"] : @6300,
                                        [dateFormatter dateFromString:@"Sep-11"] : @8180,
                                        [dateFormatter dateFromString:@"Jul-12"] : @10070},
                      @"Reciva" : @{[dateFormatter dateFromString:@"Aug-10"] : @6300,
                                    [dateFormatter dateFromString:@"Sep-11"] : @8180},
                      @"A-Level" : @{[dateFormatter  dateFromString:@"Sep-05"] : @0,
                                     [dateFormatter dateFromString:@"Jul-07"] : @1440}
                      };
    }
    return self;
}

#pragma mark - Datasource methods

-(NSInteger)numberOfSeriesInSChart:(ShinobiChart *)chart
{
    return self.data.count;
}

-(NSInteger)sChart:(ShinobiChart *)chart numberOfDataPointsForSeriesAtIndex:(NSInteger)seriesIndex
{
    NSString *seriesKey = self.series[seriesIndex];
    NSDictionary *seriesData = self.data[seriesKey];
    return seriesData.count;
}

-(SChartSeries *)sChart:(ShinobiChart *)chart seriesAtIndex:(NSInteger)index
{
    SChartLineSeries *lineSeries = [SChartLineSeries new];
    lineSeries.title = self.series[index];
    lineSeries.style.lineWidth = @2;
    return lineSeries;
}

-(id<SChartData>)sChart:(ShinobiChart *)chart dataPointAtIndex:(NSInteger)dataIndex forSeriesAtIndex:(NSInteger)seriesIndex
{
    NSString *seriesKey = self.series[seriesIndex];
    NSDictionary *seriesData = self.data[seriesKey];
    
    NSDate *dataDate = seriesData.allKeys[dataIndex];
    NSNumber *dataValue = seriesData[dataDate];
    
    SChartDataPoint *dp = [SChartDataPoint new];
    
    dp.xValue = dataDate;
    dp.yValue = dataValue;
    
    return dp;
}

@end
