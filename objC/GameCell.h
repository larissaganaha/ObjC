//
//  GameCell.h
//  objC
//
//  Created by Larissa Ganaha on 24/07/18.
//  Copyright © 2018 Larissa Ganaha. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface GameCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *gameImage;
@property (weak, nonatomic) IBOutlet UILabel *gameNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *gameCategoryLabel;

@end
