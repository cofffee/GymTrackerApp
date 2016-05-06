//
//  Workout+CoreDataProperties.h
//  GymTrackerApp
//
//  Created by Kevin Remigio on 5/5/16.
//  Copyright © 2016 Kevin Remigio. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Workout.h"

NS_ASSUME_NONNULL_BEGIN

@interface Workout (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSDate *date;
@property (nullable, nonatomic, retain) NSString *weight;
@property (nullable, nonatomic, retain) NSString *sets;
@property (nullable, nonatomic, retain) NSString *reps;

@end

NS_ASSUME_NONNULL_END
