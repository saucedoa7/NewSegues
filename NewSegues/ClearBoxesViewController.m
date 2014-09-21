//  ClearBoxesViewController.m
//  NewSegues
//
//  Created by Albert Saucedo on 9/20/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.

#import "ClearBoxesViewController.h"
#import "ViewController.h"

@interface ClearBoxesViewController ()

@end

@implementation ClearBoxesViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ClearBoxesViewController *CBVC = segue.destinationViewController;
    UIButton *currentButtonClicked = (UIButton *)sender;
    CBVC.title = currentButtonClicked.titleLabel.text;
}

- (IBAction)onHospitalButtonPressed:(id)sender {
    ViewController *mainVC;
    [mainVC.endingLabel.text isEqualToString:self.hospitalEndingTextView.text];
    NSLog(@"%@", self.hospitalEndingTextView.text);
    NSLog(@"%@", mainVC.endingLabel.text);
}
- (IBAction)onGetMarriedButtonPressed:(id)sender {
}


@end
