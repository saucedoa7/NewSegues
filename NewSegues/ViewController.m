//
//  ViewController.m
//  NewSegues
//
//  Created by Albert Saucedo on 9/19/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import "ViewController.h"
#import "ClearBoxesViewController.h"

#define Name @"Ryan"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.heroTextField.delegate = self;
}

-(void)viewWillAppear:(BOOL)animated{
    self.endingLabel.text = self.endingString;
    NSLog(@"4 %@", self.endingString);
    self.title = @"Adventure";
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{

    [self.heroTextField resignFirstResponder];
    self.updatedName = self.heroTextField.text;

    NSString *newStory = [NSString stringWithFormat:@"Oh, Sorry I mean %@ wakes up in the Mobile Maker space surrounded by empty pizza boxes", self.updatedName];
    self.mainStory.text = newStory;

    return YES;
}

-(void)viewDidAppear:(BOOL)animated{
    self.heroName = self.heroTextField.text;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    ClearBoxesViewController *DCBVC = segue.destinationViewController;
    UIButton *currentButtonClicked = (UIButton *)sender;
    DCBVC.title = currentButtonClicked.titleLabel.text;

    // The name gets passed back and fourth here (2 of 2)
    DCBVC.updatedName = self.updatedName;
    NSLog(@"DCBVC %@", DCBVC.updatedName);

    id test;
    ClearBoxesViewController *SCBVC = segue.sourceViewController;
    UITextView *currentTextView = (UITextView *) test;
    self.endingString = currentTextView.text;
    self.endingLabel.text =  SCBVC.endingString;

}

-(IBAction)unWindToRoot:(UIStoryboardSegue *)sender{

}
@end
