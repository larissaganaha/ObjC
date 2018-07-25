//
//  GameDetailsController.h
//  objC
//
//  Created by Larissa Ganaha on 25/07/18.
//  Copyright © 2018 Larissa Ganaha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Games.h"

@interface GameDetailsController : UIViewController
@property (strong, nonatomic) Games *game;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *categoryLabel;
@property (weak, nonatomic) IBOutlet UILabel *studioLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

@end
