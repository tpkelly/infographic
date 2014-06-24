//
//  LinkedBook.m
//  Infographic
//
//  Created by Thomas Kelly on 24/06/2014.
//  Copyright (c) 2014 TKGames. All rights reserved.
//

#import "LinkedBook.h"

@interface LinkedBook ()

@property (nonatomic, strong) NSURL *url;

@end

@implementation LinkedBook

-(instancetype)initWithImagePath:(NSString *)imagePath amazonURL:(NSString *)amazonURL
{
    self = [super initWithFrame:CGRectMake(0, 0, 140, 200)];
    if (self)
    {
        self.url = [[NSURL alloc] initWithString:amazonURL];

        UIImage *bookImage = [UIImage imageNamed:imagePath];
        UIButton *bookButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [bookButton setBackgroundImage:bookImage forState:UIControlStateNormal];
        bookButton.frame = self.bounds;
        [bookButton addTarget:self action:@selector(openLink) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:bookButton];
    }
    return self;
}

//Clicking button opens link in safari
-(void)openLink
{
    [[UIApplication sharedApplication] openURL:self.url];
}

@end
