//
//  CaptionedBubble.h
//  Infographic
//
//  Created by Thomas Kelly on 24/06/2014.
//  Copyright (c) 2014 TKGames. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface CaptionedBubble : NSObject

+(UIView*)bubbleWithImagePath:(NSString*)imagePath caption:(NSString*)caption;

@end
