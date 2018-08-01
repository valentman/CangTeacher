//
//  ViewController.m
//  CangTeacher
//
//  Created by Joe.Pen on 09/10/2017.
//  Copyright © 2017 Joe.Pen. All rights reserved.
//

#import "ViewController.h"
#import "JTCalendar.h"

@interface ViewController ()<JTCalendarDelegate>
@property (weak, nonatomic) IBOutlet UINavigationItem *naviItemMain;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentMain;
@property (weak, nonatomic) IBOutlet JTHorizontalCalendarView *calendarView;
@property (weak, nonatomic) IBOutlet JTCalendarMenuView *menuView;

@property (strong, nonatomic) JTCalendarManager *JTManager;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.naviItemMain.leftBarButtonItem.tintColor = [UIColor purpleColor];
    self.naviItemMain.rightBarButtonItem.tintColor = [UIColor purpleColor];
    self.view.backgroundColor = CTHPINKCOLOR;
    self.startButton.titleLabel.textColor = [UIColor purpleColor];
    self.segmentMain.tintColor = [UIColor purpleColor];
    
    _JTManager = [JTCalendarManager new];
    _JTManager.delegate = self;
    [_JTManager setContentView:_calendarView];
    [_JTManager setMenuView:_menuView];
    [_JTManager setDate:[NSDate date]];
    _JTManager.settings.weekModeEnabled = !_JTManager.settings.weekModeEnabled;
    [_JTManager reload];
    
    NSUInteger weekNo = [_JTManager.dateHelper numberOfWeeks:[NSDate date]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
