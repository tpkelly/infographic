//
//  UIColor+InfoHex.h
//  Infographic
//
//  Created by Thomas Kelly on 24/06/2014.
//  Copyright (c) 2014 Scott Logic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (InfoHex)

+(UIColor*)colorWithHex:(NSString*)hexString alpha:(CGFloat)alpha;
+(UIColor*)colorWithHexValue:(uint)hexValue alpha:(CGFloat)alpha;
@end
