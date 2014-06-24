//
//  LibrarySection.m
//  Infographic
//
//  Created by Thomas Kelly on 24/06/2014.
//  Copyright (c) 2014 TKGames. All rights reserved.
//

#import "LibrarySection.h"
#import "LinkedBook.h"

@implementation LibrarySection

- (id)init
{
    self = [super initWithFrame:CGRectMake(0, 0, 1024, 500)];
    if (self) {
        NSArray *books = @[[[LinkedBook alloc] initWithImagePath:@"Images/MythicalManMonth.jpg" amazonURL:@"http://www.amazon.co.uk/dp/0201835959/"],
                           [[LinkedBook alloc] initWithImagePath:@"Images/Peopleware.jpg" amazonURL:@"http://www.amazon.co.uk/dp/0932633056/"],
                           [[LinkedBook alloc] initWithImagePath:@"Images/PragmaticProgrammer.jpg" amazonURL:@"http://www.amazon.co.uk/dp/020161622X/"],
                           [[LinkedBook alloc] initWithImagePath:@"Images/DesignOfEverydayThings.jpg" amazonURL:@"http://www.amazon.co.uk/dp/0262525674/"],
                           [[LinkedBook alloc] initWithImagePath:@"Images/LeanUX.jpg" amazonURL:@"http://www.amazon.co.uk/dp/1449311652/"],
                           [[LinkedBook alloc] initWithImagePath:@"Images/EvilByDesign.jpg" amazonURL:@"http://www.amazon.co.uk/dp/1118422147/"],
                           [[LinkedBook alloc] initWithImagePath:@"Images/97Things.jpg" amazonURL:@"http://www.amazon.co.uk/dp/0596809484/"],
                           [[LinkedBook alloc] initWithImagePath:@"Images/DesignPatterns.jpg" amazonURL:@"http://www.amazon.co.uk/dp/0201633612/"],
                           [[LinkedBook alloc] initWithImagePath:@"Images/HeadfirstDesign.jpg" amazonURL:@"http://www.amazon.co.uk/dp/0596007124/"],
                           [[LinkedBook alloc] initWithImagePath:@"Images/ShowMeTheNumbers.jpg" amazonURL:@"http://www.amazon.co.uk/dp/0970601972/"]
                           ];
        CGFloat xPosition = 102;
        CGFloat yPosition = 50;
        for (UIView *book in books)
        {
            if (xPosition + CGRectGetWidth(book.frame) > self.bounds.size.width)
            {
                yPosition += CGRectGetHeight(book.frame) + 30;
                xPosition = 102;
            }
            
            book.layer.borderWidth = 1;
            book.frame = CGRectOffset(book.frame, xPosition, yPosition);
            xPosition += CGRectGetWidth(book.frame) + 20;
            
            [self addSubview:book];
        }
    }
    return self;
}

@end
