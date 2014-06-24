//
//  CaptionedBubble.m
//  Infographic
//
//  Created by Thomas Kelly on 24/06/2014.
//  Copyright (c) 2014 Scott Logic. All rights reserved.
//

#import "CaptionedBubble.h"

@implementation CaptionedBubble

+(UIView*)bubbleWithImagePath:(NSString*)imagePath caption:(NSString*)caption
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 160, 240)];
    
    //Add bubble image
    UIImage *image = [UIImage imageNamed:imagePath];
    UIImageView *bubbleView = [[UIImageView alloc] initWithImage:image];
    bubbleView.layer.cornerRadius = 8;
    bubbleView.layer.borderWidth = 1;
    bubbleView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    [view addSubview:bubbleView];
    
    //Add caption
    UITextView *captionView = [[UITextView alloc] initWithFrame:CGRectMake(0, 160, 160, 80)];
    captionView.text = caption;
    captionView.textAlignment = NSTextAlignmentCenter;
    captionView.font = [UIFont fontWithName:@"HelveticaNeue" size:16];
    [view addSubview:captionView];
    
    return view;
}

@end
