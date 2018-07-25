//
//  GameDetailsController.m
//  objC
//
//  Created by Larissa Ganaha on 25/07/18.
//  Copyright © 2018 Larissa Ganaha. All rights reserved.
//

#import "GameDetailsController.h"

@interface GameDetailsController ()

@end

@implementation GameDetailsController

- (void)viewDidLoad {
    [super viewDidLoad];

    if([_game.name  isEqual: @"Crash Bandicoot N. Sane Trilogy"]){
        self.navigationItem.title = @"Crash Bandicoot";
    } else {
        self.navigationItem.title = _game.name;
    }
    _categoryLabel.text = _game.category;
    _studioLabel.text = _game.studio;
    _image.image = [UIImage imageNamed:_game.imageDetailScreen];
    _descriptionLabel.text = _game.gameDescription;
}

@end
