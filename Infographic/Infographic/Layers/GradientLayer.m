//
//  GradientLayer.m
//  Infographic
//
//  Created by Thomas Kelly on 23/06/2014.
//  Copyright (c) 2014 Scott Logic. All rights reserved.
//

#import "GradientLayer.h"

@implementation GradientLayer

-(id)init
{
    self = [super init];
    if (self)
    {
        self.colors = @[(id)([UIColor colorWithWhite:0.8 alpha:1].CGColor),
                        (id)([UIColor colorWithWhite:1 alpha:1].CGColor)];
        self.startPoint = CGPointMake(0, 0.5);
        self.endPoint = CGPointMake(1, 0.5);
    }
    return self;
}

@end
