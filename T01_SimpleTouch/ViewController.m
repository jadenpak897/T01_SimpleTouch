//
//  ViewController.m
//  T01_SimpleTouch
//
//  Created by wjpak on 12/9/14.
//  Copyright (c) 2014 jdp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize myLabel1, myLabel2, myImageView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.myLabel1.text = @"Touch Starts";
    self.myLabel2.text = [NSString stringWithFormat:@"tap: %d", [[touches anyObject] tapCount]];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    //UITouch *myTouch = [[event allTouches] anyObject];
    UITouch *myTouch = [touches anyObject];
    
    self.myLabel1.text = @"Touch Moved";
    
    if ([myTouch view] == self.myImageView) {
        self.myImageView.center = [myTouch locationInView:self.view];
    }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.myLabel1.text = @"Touch Ended";
}
@end
