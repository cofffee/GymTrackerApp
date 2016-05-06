//
//  CoreDataStack.h
//  GymTrackerApp
//
//  Created by Kevin Remigio on 5/5/16.
//  Copyright © 2016 Kevin Remigio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "Workout.h"

@interface CoreDataStack : NSObject


@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

+(CoreDataStack*) coreDataStack;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;
-(void) addWorkout:(NSString*)name andWeight:(NSString*)weight andSet:(NSString*)set andReps:(NSString*)reps;
-(NSArray*) getAllWorkouts;
@end
