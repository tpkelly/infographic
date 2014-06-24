//
//  ContributionSection.m
//  Infographic
//
//  Created by Thomas Kelly on 24/06/2014.
//  Copyright (c) 2014 TKGames. All rights reserved.
//

#import "ContributionSection.h"
#import "CaptionedBubble.h"

@implementation ContributionSection

- (id)init
{
    self = [super initWithFrame:CGRectMake(0, 0, 1024, 250)];
    if (self) {
        //Add twitter button
        UIView *twitterBubble = [CaptionedBubble bubbleWithImagePath:@"Images/Twitter.png" caption:@"500+ social media posts"];
        twitterBubble.center = CGPointMake(256, 130);
        [self addSubview:twitterBubble];
        
        //Add twitter button
        UIView *forumBubble = [CaptionedBubble bubbleWithImagePath:@"Images/ForumPosts.png" caption:@"100+ forum posts"];
        forumBubble.center = CGPointMake(512, 130);
        [self addSubview:forumBubble];
        
        //Add twitter button
        UIView *blogBubble = [CaptionedBubble bubbleWithImagePath:@"Images/Blogs.png" caption:@"5 tutorial blog posts"];
        blogBubble.center = CGPointMake(768, 130);
        [self addSubview:blogBubble];
    }
    return self;
}

@end
