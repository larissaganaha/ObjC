//
//  AppDelegate.h
//  objC
//
//  Created by Larissa Ganaha on 24/07/18.
//  Copyright © 2018 Larissa Ganaha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

