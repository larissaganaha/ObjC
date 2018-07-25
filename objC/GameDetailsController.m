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
    self.navigationItem.title = _game.name;

    _categoryLabel.text = _game.category;
    _studioLabel.text = _game.studio;
    _image.image = [UIImage imageNamed:_game.imageDetailScreen];
    _descriptionLabel.text = _game.description;
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

@end
