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
    self = [super initWithFrame:CGRectMake(0, 0, 1024, 520)];
    if (self) {
        
        //Library title
        UILabel *libraryTitle = [[UILabel alloc] initWithFrame:CGRectMake(50, 150, 280, 50)];
        libraryTitle.backgroundColor = [UIColor clearColor];
        libraryTitle.font = [UIFont fontWithName:@"AmericanTypewriter" size:20];
        libraryTitle.textAlignment = NSTextAlignmentCenter;
        libraryTitle.text = @"Personal Library";
        [self addSubview:libraryTitle];
        
        //Add some descriptive text
        UITextView *libraryDescription = [[UITextView alloc] initWithFrame:CGRectMake(50, 210, 280, 500)];
        libraryDescription.userInteractionEnabled = NO;
        libraryDescription.backgroundColor = [UIColor clearColor];
        libraryDescription.font = [UIFont fontWithName:@"HelveticaNeue" size:14];
        libraryDescription.text = @"During my time at Reciva and ShinobiControls, I have built up a sizable reading list. These books are a selection of some I have read and recommended to others.\n\n"
		                           "In particular, books about User Experience (UX), Agile Development, and Project Management feature heavily.";
        [self addSubview:libraryDescription];
        
        //Add the book images, with links
        NSArray *books = @[[[LinkedBook alloc] initWithImagePath:@"Images/MythicalManMonth.jpg" amazonURL:@"http://www.amazon.co.uk/dp/0201835959/"],
                           [[LinkedBook alloc] initWithImagePath:@"Images/Peopleware.jpg" amazonURL:@"http://www.amazon.co.uk/dp/0932633056/"],
                           [[LinkedBook alloc] initWithImagePath:@"Images/PragmaticProgrammer.jpg" amazonURL:@"http://www.amazon.co.uk/dp/020161622X/"],
                           [[LinkedBook alloc] initWithImagePath:@"Images/DesignOfEverydayThings.jpg" amazonURL:@"http://www.amazon.co.uk/dp/0262525674/"],
                           [[LinkedBook alloc] initWithImagePath:@"Images/LeanUX.jpg" amazonURL:@"http://www.amazon.co.uk/dp/1449311652/"],
                           [[LinkedBook alloc] initWithImagePath:@"Images/EvilByDesign.jpg" amazonURL:@"http://www.amazon.co.uk/dp/1118422147/"],
                           [[LinkedBook alloc] initWithImagePath:@"Images/97Things.jpg" amazonURL:@"http://www.amazon.co.uk/dp/0596809484/"],
                           [[LinkedBook alloc] initWithImagePath:@"Images/DesignPatterns.jpg" amazonURL:@"http://www.amazon.co.uk/dp/0201633612/"],
                           //[[LinkedBook alloc] initWithImagePath:@"Images/HeadfirstDesign.jpg" amazonURL:@"http://www.amazon.co.uk/dp/0596007124/"],
                           //[[LinkedBook alloc] initWithImagePath:@"Images/ShowMeTheNumbers.jpg" amazonURL:@"http://www.amazon.co.uk/dp/0970601972/"]
                           ];
        
        //Position all the books
        CGFloat initialX = 380;
        CGFloat xPosition = initialX;
        CGFloat yPosition = 50;
        for (UIView *book in books)
        {
            if (xPosition + CGRectGetWidth(book.frame) > self.bounds.size.width)
            {
                yPosition += CGRectGetHeight(book.frame) + 30;
                xPosition = initialX;
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
