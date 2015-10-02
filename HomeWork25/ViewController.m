//
//  ViewController.m
//  HomeWork25
//
//  Created by Admin on 02.05.15.
//  Copyright (c) 2015 HY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (assign, nonatomic) double num1;
@property (assign, nonatomic) double numFin;
@property (assign, nonatomic) double afterPoint;
@property (assign, nonatomic) short action;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)numberButton:(UIButton *)sender {
    
    NSLog(@"number: %ld", (long)sender.tag);
    
    if (sender.tag >= 0 && sender.tag <= 9) {
        self.num1 = self.num1 * 10 + sender.tag;
    }
    
    if (sender.tag >= 10 && sender.tag <=13) {
        self.action = sender.tag;
        self.numFin = self.num1;
        self.num1 = 0;
        self.indicatorLabel.text = [NSString stringWithFormat:@" "];
    } else {
        self.indicatorLabel.text = [NSString stringWithFormat:@"%f", self.num1];
    }
    
    if (sender.tag == 14) {
        switch (self.action) {
            case 10:
                self.num1 = self.num1 + self.numFin;
                self.numFin = 0;
                self.indicatorLabel.text = [NSString stringWithFormat:@"%f", self.num1];
                break;
            case 11:
                self.num1 = self.numFin - self.num1;
                self.numFin = 0;
                self.indicatorLabel.text = [NSString stringWithFormat:@"%f", self.num1];
                break;
            case 12:
                self.num1 = self.num1 * self.numFin;
                self.numFin = 0;
                self.indicatorLabel.text = [NSString stringWithFormat:@"%f", self.num1];
                break;
            case 13:
                self.num1 = self.numFin / self.num1;
                self.numFin = 0;
                self.indicatorLabel.text = [NSString stringWithFormat:@"%f", self.num1];
                break;
            default:
                break;
        }
    }
    
    if (sender.tag == 15) {
        self.indicatorLabel.text = [NSString stringWithFormat:@"0"];
        self.numFin=0;
        self.num1=0;
    }
    
    
    
    if (sender.tag == 16) {
        
    }
    
}
@end
