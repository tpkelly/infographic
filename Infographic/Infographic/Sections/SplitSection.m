//
//  SplitSection.m
//  Infographic
//
//  Created by Thomas Kelly on 24/06/2014.
//  Copyright (c) 2014 TKGames. All rights reserved.
//

#import "SplitSection.h"

@implementation SplitSection

- (id)init
{
    self = [super initWithFrame:CGRectMake(0, 0, 1024, 300)];
    if (self) {
        //Add left title
        UIImageView *leftTitle = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Images/ShinobiControls.png"]];
        leftTitle.center = CGPointMake(256, 50);
        [self addSubview:leftTitle];
        
        //Add left text
        UITextView *leftText = [[UITextView alloc] initWithFrame:CGRectMake(50, 75, 462, 200)];
        leftText.backgroundColor = [UIColor clearColor];
        leftText.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:16];
        leftText.text = @"\u2022 iOS component development across entire product range.\n"
        "\u2022 (Unofficial) UX expert amongst development team.\n"
        "\u2022 Social media manager.\n"
        "\u2022 Technical Support.\n"
        "\u2022 Marketting Comms copy-reviewer.\n"
        "\u2022 Continual presence on the office library book orders.\n"
        "\u2022 Blogger.\n"
        "\u2022 Interviewer.\n"
        "\u2022 Maintainer of the Continuous Integration server.\n"
        "\u2022 Participant in numerous study groups.";
        [self addSubview:leftText];
        
        //Add right title
        UIImageView *rightTitle = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Images/Reciva.png"]];
        rightTitle.center = CGPointMake(768, 50);
        [self addSubview:rightTitle];
        
        //Add right text
        UITextView *rightText = [[UITextView alloc] initWithFrame:CGRectMake(572, 125, 412, 75)];
        rightText.backgroundColor = [UIColor clearColor];
        rightText.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:16];
        rightText.text = @"\u2022 Client-side development of integrated device software.\n"
        "\u2022 Development of device drivers and features.\n"
        "\u2022 Server-side development of radio services.";
        [self addSubview:rightText];
    }
    return self;
}

@end
