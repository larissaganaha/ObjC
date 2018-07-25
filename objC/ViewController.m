//
//  ViewController.m
//  objC
//
//  Created by Larissa Ganaha on 24/07/18.
//  Copyright © 2018 Larissa Ganaha. All rights reserved.
//

#import "ViewController.h"
#import "GameCell.h"
#import "GameDetailsController.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray *imagesName;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSMutableArray <Games *> *games;
@property (strong, nonatomic)  Games *currentGame;
@property  NSInteger index;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    self.games = NSMutableArray.new;
    self.navigationItem.title = @"Games";
    // set large titles iOS 11 style
    self.navigationController.navigationBar.prefersLargeTitles = YES;
    [self setupGames];


    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupGames {
    // instantiate new Games object
    Games *game = Games.new;
    game.name = @"Crash Bandicoot";
    game.category = @"Adventure";
    game.imageHomeScreen = @"crash";
    game.imageDetailScreen = @"crash2";
    game.studio = @"Naughty Dog";
    [self.games addObject:game];

    game = Games.new;
    game.name = @"The Last of Us";
    game.category = @"Action-Adventure";
    game.imageHomeScreen = @"lastofus";
    game.imageDetailScreen = @"lastofus2";
    game.studio = @"Naughty Dog";
    game.gameDescription = @"20 years after a infectious disease has taken over most of the world's population, Joel finds himself traveling through what's left of the US with a girl who may just have the answer to bringing mankind back to life. The only problem is they aren't the only ones trying to survive through these desperate times.";
    [self.games addObject:game];

    game = Games.new;
    game.name = @"Fortnite";
    game.category = @"Various";
    game.imageHomeScreen = @"fortnite";
    game.imageDetailScreen = @"fortnite2";
    game.studio = @"Naughty Dog";

    [self.games addObject:game];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.games.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellId = @"cell";
    GameCell *cell = (GameCell*) [tableView dequeueReusableCellWithIdentifier:cellId];

    self.currentGame = self.games[indexPath.row];
    NSString *imageName = self.currentGame.imageHomeScreen;

    cell.gameImage.image = [UIImage imageNamed:imageName];
    cell.gameNameLabel.text = self.currentGame.name;
    [cell.gameImage setContentMode:UIViewContentModeScaleToFill];
    cell.gameCategoryLabel.text = self.currentGame.category;

    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 292;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.index = indexPath.row;
    [self performSegueWithIdentifier:@"showDetails" sender:(nil)];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    GameDetailsController *targetVC = (GameDetailsController *)segue.destinationViewController;
    targetVC.game = self.games[self.index];
}

@end
