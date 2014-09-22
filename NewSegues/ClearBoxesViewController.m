//  ClearBoxesViewController.m
//  NewSegues
//
//  Created by Albert Saucedo on 9/20/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.

#import "ClearBoxesViewController.h"
#import "ViewController.h"

@interface ClearBoxesViewController ()
@property (weak, nonatomic) IBOutlet UITextView *marrriedEndingTextView;
@property (weak, nonatomic) IBOutlet UITextView *hospitalEndingTextView;
@end

@implementation ClearBoxesViewController

@synthesize endingString;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)viewDidAppear:(BOOL)animated{
    NSLog(@"Updated name %@", self.updatedName);
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    ClearBoxesViewController *CBVC = segue.destinationViewController;
    UIButton *currentButtonClicked = (UIButton *)sender;
    CBVC.title = currentButtonClicked.titleLabel.text;

    ViewController *mainVC = segue.destinationViewController;

    UITextView *hospitalTextView = (UITextView *) self.hospitalEndingTextView;
    UITextView *marriedTextView = (UITextView *) self.marrriedEndingTextView;

    if (self.hospitalEndingTextView) {
        self.endingString = hospitalTextView.text;
        mainVC.endingString = self.endingString;
    } else if (self.marrriedEndingTextView){
        self.endingString = marriedTextView.text;
        mainVC.endingString = self.endingString;
    }

}
@end
