//
//  ViewController.h
//  NewSegues
//
//  Created by Albert Saucedo on 9/19/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *clearBoxes;
@property (weak, nonatomic) IBOutlet UILabel *endingLabel;
@property (weak, nonatomic) IBOutlet UIButton *eatBoxes;
@property (weak, nonatomic) IBOutlet UITextField *heroTextField;
@property (weak, nonatomic) IBOutlet UITextView *mainStory;
@property (copy, nonatomic) NSString *endingString;
@property (copy, nonatomic) NSString *heroName;
@property (copy, nonatomic) NSString *updatedName;
@end
