//
//  ViewController.m
//  Infographic
//
//  Created by Thomas Kelly on 23/06/2014.
//  Copyright (c) 2014 Scott Logic. All rights reserved.
//

#import "ViewController.h"

#import "CumulativeSection.h"
#import "SplitSection.h"
#import "StackedSection.h"
#import "ContributionSection.h"
#import "LibrarySection.h"

@implementation ViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    self.titleLabel.text = @"Test my title";

    NSArray *sections = @[[CumulativeSection new], [SplitSection new], [StackedSection new], [LibrarySection new], [ContributionSection new]];
    
    for (UIView *section in sections)
    {
        [self addSection:section];
    }
}

-(void)addDivider
{
    CGFloat boundWidth = 1024;
    CGFloat dividerPadding = 50;
    UIView *divider = [[UIView alloc] initWithFrame:CGRectMake(boundWidth * 0.35, self.scrollview.contentSize.height + dividerPadding, boundWidth * 0.3, 1)];
    divider.backgroundColor = [UIColor lightGrayColor];
    [self.scrollview addSubview:divider];

    //Resize to be closely fitting
    self.scrollview.contentSize = CGSizeMake(CGRectGetMaxX(self.view.bounds), CGRectGetMaxY(divider.frame) + dividerPadding);
}

-(void)addSection:(UIView*)section
{
    section.frame = CGRectOffset(section.frame, 0, self.scrollview.contentSize.height);
    [self.scrollview addSubview:section];
    
    //Resize scrollview to be closely fitting;
    self.scrollview.contentSize = CGSizeMake(CGRectGetWidth(self.view.bounds), CGRectGetMaxY(section.frame));

    //Add leading divider
    [self addDivider];
}

@end
