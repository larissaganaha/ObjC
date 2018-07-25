//
//  Games.h
//  objC
//
//  Created by Larissa Ganaha on 24/07/18.
//  Copyright © 2018 Larissa Ganaha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Games : NSObject
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *category;
@property (strong, nonatomic) NSString *imageHomeScreen;
@property (strong, nonatomic) NSString *imageDetailScreen;
@property (strong, nonatomic) NSString *studio;
@property (strong, nonatomic) NSString *gameDescription;

@end
