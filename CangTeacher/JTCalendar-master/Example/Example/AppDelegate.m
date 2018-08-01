//
//  AppDelegate.m
//  Example
//
//  Created by Jonathan Tribouharet.
//

#import "AppDelegate.h"

#import "BasicViewController.h"
#import "CustomViewController.h"
#import "SelectionViewController.h"
#import "VerticalViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSCalendar *greCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    //    通过已定义的日历对象，获取某个时间点的NSDateComponents表示，并设置需要表示哪些信息（NSYearCalendarUnit, NSMonthCalendarUnit, NSDayCalendarUnit等）
    NSDateComponents *dateComponents = [greCalendar components:NSCalendarUnitEra|NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour|NSCalendarUnitMinute|NSCalendarUnitSecond|NSCalendarUnitWeekday|NSCalendarUnitWeekdayOrdinal|NSCalendarUnitQuarter|NSCalendarUnitWeekOfMonth|NSCalendarUnitWeekOfYear fromDate:[NSDate date]];
    NSLog(@"year(年份): %ld", dateComponents.year);
    NSLog(@"quarter(季度):%ld", dateComponents.quarter);
    NSLog(@"month(月份):%ld", dateComponents.month);
    NSLog(@"day(日期):%ld", dateComponents.day);
    NSLog(@"hour(小时):%ld", dateComponents.hour);
    NSLog(@"minute(分钟):%ld", dateComponents.minute);
    NSLog(@"second(秒):%ld", dateComponents.second);
    
    //    Sunday:1, Monday:2, Tuesday:3, Wednesday:4, Friday:5, Saturday:6
    NSLog(@"weekday(星期):%ld", dateComponents.weekday);
    
    //    苹果官方不推荐使用week
    NSLog(@"weekOfYear(该年第几周):%ld", dateComponents.weekOfYear);
    NSLog(@"weekOfMonth(该月第几周):%ld", dateComponents.weekOfMonth);
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window makeKeyAndVisible];
    
    UITabBarController *controller = [UITabBarController new];
    self.window.rootViewController = controller;
    
    controller.viewControllers = @[
                                   [BasicViewController new],
                                   [CustomViewController new],
                                   [SelectionViewController new],
                                   [VerticalViewController new]
                                   ];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
