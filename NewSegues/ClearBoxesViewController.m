//  ClearBoxesViewController.m
//  NewSegues
//
//  Created by Albert Saucedo on 9/20/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.

#import "ClearBoxesViewController.h"
#import "ViewController.h"

@interface ClearBoxesViewController ()<UITextViewDelegate>
@end

@implementation ClearBoxesViewController

@synthesize endingString;
@synthesize updatedName;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated{
    [self textViewShouldBeginEditing:self.hospitalEndingTextView];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    ClearBoxesViewController *DCBVC = segue.destinationViewController;
    UIButton *currentButtonClicked = (UIButton *)sender;
    DCBVC.title = currentButtonClicked.titleLabel.text;


    // The name gets passed back and fourth here (1 of 2)
    DCBVC.updatedName = self.updatedName;
    NSLog(@"DCBVC %@", DCBVC.updatedName);

    ViewController *fromMainVC = segue.sourceViewController;
    if (self.hospitalEndingTextView) {
        fromMainVC.updatedName = self.updatedName;
    } else if (self.marrriedEndingTextView){
        fromMainVC.updatedName = self.updatedName;
    }

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

-(BOOL)textViewShouldBeginEditing:(UITextView *)textView{

    if (self.hospitalEndingTextView) {
        NSString *hospitalEndingString = [NSString stringWithFormat:@"%@ gets his stomach pumped. The end.", self.updatedName];

        NSLog(@"updatedNAme %@", self.updatedName);
        NSLog(@"String %@", hospitalEndingString);

        self.hospitalEndingTextView.text = [[NSString alloc ] initWithString:hospitalEndingString];

        NSLog(@"HTextView %@", hospitalEndingString);

    } else if (self.marrriedEndingTextView){

        NSString *marriedEndingString = [NSString stringWithFormat: @"​%@ gets married with four children. The end.", self.updatedName];

        self.marrriedEndingTextView.text = marriedEndingString;
        NSLog(@"MTextView %@", marriedEndingString);
        
    }

    return YES;
}


@end
