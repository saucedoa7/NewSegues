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
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ClearBoxesViewController *DCBVC = segue.destinationViewController;
    UIButton *currentButtonClicked = (UIButton *)sender;
    DCBVC.title = currentButtonClicked.titleLabel.text;
    }

-(IBAction)unWindToRoot:(UIStoryboardSegue *)sender{

}
@end
