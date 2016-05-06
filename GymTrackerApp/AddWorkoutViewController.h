//
//  AddWorkoutViewController.h
//  GymTrackerApp
//
//  Created by Kevin Remigio on 5/6/16.
//  Copyright © 2016 Kevin Remigio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddWorkoutViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *weightTextField;
@property (weak, nonatomic) IBOutlet UITextField *setsTextField;
@property (weak, nonatomic) IBOutlet UITextField *repsTextField;
- (IBAction)saveWorkout:(id)sender;

@end
