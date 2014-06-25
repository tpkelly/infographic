//
//  HobbiesSection.m
//  Infographic
//
//  Created by Thomas Kelly on 25/06/2014.
//  Copyright (c) 2014 Scott Logic. All rights reserved.
//

#import "HobbiesSection.h"
#import "CaptionedBubble.h"

@implementation HobbiesSection

- (id)init
{
    self = [super initWithFrame:CGRectMake(0, 0, 1024, 300)];
    if (self) {
        //Add overview
        UILabel *overviewLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 20, 400, 50)];
        overviewLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:16];
        overviewLabel.text = @"Outside of work, I also...";
        [self addSubview:overviewLabel];
        
        //Add BASS button
        UIView *animeBubble = [CaptionedBubble bubbleWithImagePath:@"Images/ForumPosts.png" caption:@"Organise a weekly anime group\n(since Jan 2012)"];
        animeBubble.center = CGPointMake(204, 165);
        [self addSubview:animeBubble];

        //Add music button
        UIView *musicBubble = [CaptionedBubble bubbleWithImagePath:@"Images/ForumPosts.png" caption:@"Play Flute and Piano"];
        musicBubble.center = CGPointMake(409, 165);
        [self addSubview:musicBubble];
        
        //Add cosplay button
        UIView *cosplayBubble = [CaptionedBubble bubbleWithImagePath:@"Images/ForumPosts.png" caption:@"Make and wear cosplays"];
        cosplayBubble.center = CGPointMake(614, 165);
        [self addSubview:cosplayBubble];
        
        //Add games button
        UIView *gamesBubble = [CaptionedBubble bubbleWithImagePath:@"Images/ForumPosts.png" caption:@"Play lots of video games.\nCurrently writing a book\non Gamification"];
        gamesBubble.center = CGPointMake(820, 165);
        [self addSubview:gamesBubble];
    }
    return self;
}

@end
