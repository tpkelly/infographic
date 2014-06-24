//
//  StackedSection.m
//  Infographic
//
//  Created by Thomas Kelly on 24/06/2014.
//  Copyright (c) 2014 Scott Logic. All rights reserved.
//

#import "StackedSection.h"
#import "StackedChart.h"
#import "StackedDatasource.h"

@interface StackedSection ()

@property (nonatomic, strong) StackedDatasource *stackedDatasource;

@end

@implementation StackedSection

- (id)init
{
    self = [super initWithFrame:CGRectMake(0, 0, 1024, 450)];
    if (self) {
        //Set up Stacked chart
        StackedChart *stackedChart = [[StackedChart alloc] initWithFrame:CGRectMake(400, 10, 600, 400)];
        stackedChart.userInteractionEnabled = NO;
        self.stackedDatasource = [StackedDatasource new];
        stackedChart.datasource = self.stackedDatasource;
        [self addSubview:stackedChart];
        
        //Add describing textview
        UITextView *stackedText = [[UITextView alloc] initWithFrame:CGRectMake(50, 125, 350, 200)];
        stackedText.backgroundColor = [UIColor clearColor];
        stackedText.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:14];
        stackedText.text = @"The past decade has given me a wide range of experience across many different languages.\n\n"
                            "This primarily focused on Objective-C and Java, but includes other languages (grey columns) such as:\n"
                            "\u2022 Python\n\u2022 Ruby\n\u2022 Pascal\n\u2022 PHP\n\u2022 HTML5\n\u2022 Assembly";
        [self addSubview:stackedText];
    }
    return self;
}


@end
