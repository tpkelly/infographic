//
//  ViewController.m
//  Infographic
//
//  Created by Thomas Kelly on 23/06/2014.
//  Copyright (c) 2014 TKGames. All rights reserved.
//

#import "ViewController.h"

#import "CumulativeSection.h"
#import "SplitSection.h"
#import "StackedSection.h"
#import "ContributionSection.h"
#import "LibrarySection.h"
#import "HobbiesSection.h"

#import "UIColor+InfoHex.h"

@implementation ViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    self.titleLabel.text = @"Test my title";

    NSArray *sections = @[[CumulativeSection new],
                          [SplitSection new],
                          [StackedSection new],
                          [ContributionSection new],
                          [LibrarySection new],
                          [HobbiesSection new]];
    
    NSArray *colours = @[[UIColor colorWithHex:@"66c2a5" alpha:1],
                         [UIColor colorWithHex:@"fc8d62" alpha:1],
                         [UIColor colorWithHex:@"8da0cb" alpha:1],
                         [UIColor colorWithHex:@"e78ac3" alpha:1],
                         [UIColor colorWithHex:@"a6d854" alpha:1],
                         [UIColor colorWithHex:@"ffd92f" alpha:1]
                         ];
    
    for (int i = 0; i < sections.count; i++)
    {
        UIView *section = sections[i];
        section.backgroundColor = colours[i];
        [self addSection:section];
    }
}

-(void)addSection:(UIView*)section
{
    section.frame = CGRectOffset(section.frame, 0, self.scrollview.contentSize.height);
    [self.scrollview addSubview:section];
    
    //Resize scrollview to be closely fitting;
    self.scrollview.contentSize = CGSizeMake(CGRectGetWidth(self.view.bounds), CGRectGetMaxY(section.frame));
}

@end
