//
//  ViewController.m
//  CangTeacher
//
//  Created by Joe.Pen on 09/10/2017.
//  Copyright © 2017 Joe.Pen. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UINavigationItem *naviItemMain;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentMain;

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
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
