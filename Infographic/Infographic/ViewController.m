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
    
    self.titleLabel.text = @"Thomas Kelly";
    self.contactLabel.text = @"07557 102412\n"
                              "kazenone@gmail.com";

    NSArray *sections = @[[StackedSection new],
                          [SplitSection new],
                          [ContributionSection new],
                          [LibrarySection new],
                          [HobbiesSection new]];
    
    NSArray *colours = @[[UIColor colorWithHex:@"deebf7" alpha:1],
                         [UIColor colorWithHex:@"9ecae1" alpha:1],
                         ];
    for (int i = 0; i < sections.count; i++)
    {
        UIView *section = sections[i];
        section.backgroundColor = colours[i % colours.count];
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
