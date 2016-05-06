//
//  AddWorkoutViewController.m
//  GymTrackerApp
//
//  Created by Kevin Remigio on 5/6/16.
//  Copyright © 2016 Kevin Remigio. All rights reserved.
//

#import "AddWorkoutViewController.h"
#import "CoreDataStack.h"

@interface AddWorkoutViewController ()

@end

@implementation AddWorkoutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)saveWorkout:(id)sender {
    NSString *name = _nameTextField.text;
    NSString *weight = _weightTextField.text;
    NSString *sets = _setsTextField.text;
    NSString *reps = _repsTextField.text;
    
    CoreDataStack *cds = [CoreDataStack coreDataStack];
    [cds addWorkout:name andWeight:weight andSet:sets andReps:reps];
}
@end
