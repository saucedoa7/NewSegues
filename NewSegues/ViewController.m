//
//  ViewController.m
//  NewSegues
//
//  Created by Albert Saucedo on 9/19/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import "ViewController.h"
#import "ClearBoxesViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated{
    self.endingLabel.text = self.endingString;
    NSLog(@"4 %@", self.endingString);
    self.title = @"Adventure";
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ClearBoxesViewController *DCBVC = segue.destinationViewController;
    UIButton *currentButtonClicked = (UIButton *)sender;
    DCBVC.title = currentButtonClicked.titleLabel.text;

    ClearBoxesViewController *SCBVC = segue.sourceViewController;
    UITextView *currentTextView = (UITextView *) sender;
    self.endingString = currentTextView.text;
    self.endingLabel.text = SCBVC.endingString;

    }

-(IBAction)unWindToRoot:(UIStoryboardSegue *)sender{

}
@end
