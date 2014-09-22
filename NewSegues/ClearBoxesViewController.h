//
//  ClearBoxesViewController.h
//  NewSegues
//
//  Created by Albert Saucedo on 9/20/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClearBoxesViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *marrriedEndingTextView;
@property (weak, nonatomic) IBOutlet UITextView *hospitalEndingTextView;
@property (copy, nonatomic) NSString *endingString;
@property (copy, nonatomic) NSString *updatedName;

@end
