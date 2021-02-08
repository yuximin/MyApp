//
//  MacroDefine.h
//  MyApp
//
//  Created by Apple on 2021/2/8.
//  Copyright © 2021 Apple. All rights reserved.
//

#ifndef MacroDefine_h
#define MacroDefine_h

#pragma mark - UIColor

// 颜色RGB
#define RGB(r,g,b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1.0f]

// 颜色RGBA
#define RGBA(r, g, b, a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:a]

// 颜色十六进制
#define RGB_COLOR(_STR_,a) ([UIColor colorWithRed:[[NSString stringWithFormat:@"%lu", strtoul([[_STR_ substringWithRange:NSMakeRange(1, 2)] UTF8String], 0, 16)] intValue]/255.0f green:[[NSString stringWithFormat:@"%lu", strtoul([[_STR_ substringWithRange:NSMakeRange(3, 2)] UTF8String], 0, 16)] intValue]/255.0f blue:[[NSString stringWithFormat:@"%lu", strtoul([[_STR_ substringWithRange:NSMakeRange(5, 2)] UTF8String], 0, 16)] intValue]/255.0f alpha:a])

#pragma mark - 主题色

#define GIRL_TINT_COLOR RGB(255,192,203)
#define BOY_TINT_COLOR RGB(102,204,255)

#endif /* MacroDefine_h */
