//
//  CaptionedBubble.m
//  Infographic
//
//  Created by Thomas Kelly on 24/06/2014.
//  Copyright (c) 2014 TKGames. All rights reserved.
//

#import "CaptionedBubble.h"

@implementation CaptionedBubble

+(UIView*)bubbleWithImagePath:(NSString*)imagePath caption:(NSString*)caption
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    view.backgroundColor = [UIColor clearColor];
    
    //Add bubble image
    UIImage *image = [UIImage imageNamed:imagePath];
    UIImageView *bubbleView = [[UIImageView alloc] initWithImage:image];
    bubbleView.frame = CGRectMake(60, 30, 80, 80);
    bubbleView.backgroundColor = [UIColor clearColor];
    bubbleView.clipsToBounds = YES;
    bubbleView.layer.cornerRadius = 10;
    bubbleView.layer.borderWidth = 2;
    bubbleView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    [view addSubview:bubbleView];
    
    //Add caption
    UITextView *captionView = [[UITextView alloc] initWithFrame:CGRectMake(0, 110, 200, 80)];
    captionView.backgroundColor = [UIColor clearColor];
    captionView.text = caption;
    captionView.textAlignment = NSTextAlignmentCenter;
    captionView.font = [UIFont fontWithName:@"HelveticaNeue" size:16];
    [view addSubview:captionView];
    
    return view;
}

@end
