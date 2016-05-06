//
//  ViewController.m
//  GymTrackerApp
//
//  Created by Kevin Remigio on 5/5/16.
//  Copyright © 2016 Kevin Remigio. All rights reserved.
//

#import "ViewController.h"
#import "CoreDataStack.h"

@interface ViewController () {
    NSMutableArray *workoutArray;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    workoutArray = [[NSMutableArray alloc]init];
}
-(void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [workoutArray removeAllObjects];
    
    CoreDataStack *dataStack = [CoreDataStack coreDataStack];
    
    [workoutArray addObjectsFromArray:[dataStack getAllWorkouts]];
    
    [self.workoutTableView reloadData];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    if (section == 0) {
        return @"Today";
    } else
        return @"Past";
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    if (section == 0) {
//        return workoutArray.count;
//    } else if (section==1) {
//        return 3;
//    } else return 0;
    return workoutArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //REUSABLE CELLS
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    //Food *food = [[Food alloc] init];
    Workout *workouts = [workoutArray objectAtIndex:indexPath.row];
    
    NSString *textStr = [NSString stringWithFormat:@"Workout:%@ %@lbs Reps:%@ Sets:%@", workouts.name, workouts.weight, workouts.reps, workouts.sets];
    cell.textLabel.text = textStr;
    
    NSString *detailStr = [NSString stringWithFormat:@"Date:%@", workouts.date];
    
    cell.detailTextLabel.text = detailStr;
    //cell.textLabel.text = @"hello";
    
    return cell;

}

@end
