//
//  ViewController.m
//  0409HomeworkGustures
//
//  Created by NEIL on 2015/4/9.
//  Copyright (c) 2015年 NEIL. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property(strong,nonatomic)    NSMutableSet *activeRecognizers;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _activeRecognizers = [NSMutableSet set];

    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)tapGesture:(id)sender {
    UITapGestureRecognizer *tapGuse = (UITapGestureRecognizer *)sender;
    tapGuse.view.backgroundColor = [UIColor colorWithRed:(float)(arc4random() % 255) / 255 green:(float)(arc4random() % 255) / 255 blue:(float)(arc4random() % 255) / 255 alpha:1];
 
}


- (IBAction)PinchGesture:(id)sender {
    UIPinchGestureRecognizer *pinchGesture = (UIPinchGestureRecognizer *)sender;
    
    
    BOOL isScaled = ! CGAffineTransformIsIdentity(pinchGesture.view.transform);
    
    if (!isScaled) {
        CGAffineTransform scalingTransform;
        
        float X = pinchGesture.scale;
        scalingTransform = CGAffineTransformMakeScale(X, X);
        pinchGesture.view.transform = scalingTransform;
    } else {
        pinchGesture.view.transform = CGAffineTransformIdentity;

}
    

}

- (IBAction)RotationGesture:(id)sender {
    UIRotationGestureRecognizer *rotationRecognizer = (UIRotationGestureRecognizer *)sender;
    rotationRecognizer.view.transform = CGAffineTransformMakeRotation(rotationRecognizer.rotation);
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
