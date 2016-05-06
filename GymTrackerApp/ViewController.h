//
//  ViewController.h
//  GymTrackerApp
//
//  Created by Kevin Remigio on 5/5/16.
//  Copyright © 2016 Kevin Remigio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *workoutTableView;

@end

