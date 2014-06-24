//
//  UIColor+InfoHex.m
//  Infographic
//
//  Created by Thomas Kelly on 24/06/2014.
//  Copyright (c) 2014 Scott Logic. All rights reserved.
//  Found this on http://www.pixeldock.com/blog/uicolorcolorwithhex-a-category-to-get-an-uicolor-from-a-hex-value-or-a-hex-string/
//

#import "UIColor+InfoHex.h"

@implementation UIColor (InfoHex)


+(UIColor*)colorWithHexValue:(uint)hexValue alpha:(CGFloat)alpha {
    return [UIColor
            colorWithRed:((hexValue & 0xFF0000) >> 16)/255.0
            green:((hexValue & 0xFF00) >> 8)/255.0
            blue:(hexValue & 0xFF)/255.0
            alpha:alpha];
}

+(UIColor *)colorWithHex:(NSString *)hexString alpha:(CGFloat)alpha
{
    UIColor *col;
    hexString = [hexString stringByReplacingOccurrencesOfString:@"#"
                                                     withString:@"0x"];
    uint hexValue;
    if ([[NSScanner scannerWithString:hexString] scanHexInt:&hexValue]) {
        col = [self colorWithHexValue:hexValue alpha:alpha];
    } else {
        NSLog(@"Invalid hex string: '%@'", hexString);
        col = [self blackColor];
    }
    return col;
}

@end
