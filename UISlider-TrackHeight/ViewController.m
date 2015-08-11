//
//  ViewController.m
//  UISlider-TrackHeight
//
//  Created by FTET on 15/8/11.
//  Copyright (c) 2015年 vilyever. All rights reserved.
//

#import "ViewController.h"

#import "UISlider+VDTrackHeight.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UISlider *verticalSlider;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.slider.vd_trackHeight = 5.0f;
    
    self.verticalSlider.transform = CGAffineTransformMakeRotation(M_PI * -0.5f);
    self.verticalSlider.vd_trackHeight = 10.0f;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
