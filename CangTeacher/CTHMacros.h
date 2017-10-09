//
//  CTHMacros.h
//  CangTeacher
//
//  Created by Joe.Pen on 09/10/2017.
//  Copyright © 2017 Joe.Pen. All rights reserved.
//

#ifndef CTHMacros_h
#define CTHMacros_h

// 获取RGB颜色
#define RGBA(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
#define RGB(r,g,b) RGBA(r,g,b,1.0f)

//背景色
#define BACKGROUND_COLOR [UIColor colorWithRed:242.0/255.0 green:236.0/255.0 blue:231.0/255.0 alpha:1.0]
#define FORGROUND_COLOR RGB(242,236,231)

//清除背景色
#define CLEARCOLOR [UIColor clearColor]
#define WHITECOLOR [UIColor whiteColor]
#define BLACKCOLOR [UIColor blackColor]
#define BLUECOLOR  [UIColor blueColor]
#define REDCOLOR   [UIColor redColor]
#define GRAYCOLOR  [UIColor grayColor]
#define LIGHTGRAYCOLOR [UIColor lightGrayColor]

#define CTHTINTCOLOR1 RGB(204, 102, 255)
#define CTHTINTCOLOR2 RGB(128, 0, 128)
#define CTHTINTCOLOR3 RGB(255, 102, 102)
#define CTHTINTCOLOR4 RGB(153, 153, 153)

//本项目自定义颜色
#define CTHBLUECOLOR RGB(44, 148, 255)
#define CTHREDCOLOR RGB(251, 70, 78)
#define CTHGRAYCOLOR RGB(180, 180, 180)
#define CTHGREENCOLOR RGB(0, 204, 204)
#define CTHTableViewBGColor RGB(240, 240, 240)
#define CTHNAVIBARBGCOLOR RGB(247, 247, 247)
#define CTHNAVIBARBGCOLORALPHA(a) UIColorFromHEX(0xF7F7F7,a)
#endif /* CTHMacros_h */
