//
//  ViewController.m
//  TicTacToe
//
//  Created by John Mai on 11/3/15.
//  Copyright © 2015 John Mai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *gameBoxOne;
@property (weak, nonatomic) IBOutlet UILabel *gameBoxTwo;
@property (weak, nonatomic) IBOutlet UILabel *gameBoxThree;
@property (weak, nonatomic) IBOutlet UILabel *gameBoxFour;
@property (weak, nonatomic) IBOutlet UILabel *gameBoxFive;
@property (weak, nonatomic) IBOutlet UILabel *gameBoxSix;
@property (weak, nonatomic) IBOutlet UILabel *gameBoxSeven;
@property (weak, nonatomic) IBOutlet UILabel *gameBoxEight;
@property (weak, nonatomic) IBOutlet UILabel *gameBoxNine;
@property (weak, nonatomic) IBOutlet UILabel *playerTurnLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerTurnSignLabel;
@property NSString *player1;
@property NSString *player2;
@property NSArray *boxLabels;
@property BOOL player1Turn;

@property NSMutableArray *gameBoard;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.player1 = @"X";
    self.player2 = @"O";

    self.player1Turn = YES;
    
    [self initializeGameBoard];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)gestureTapped:(UITapGestureRecognizer *)sender {

    [self setSignForLabel:(UILabel *)sender.view];
    
    
}

- (void)setSignForLabel:(UILabel *)label {
    if (self.player1Turn) {
        label.text = self.player1;
        label.textColor = [UIColor blueColor];
        self.playerTurnLabel.text = @"Player's Two Turn:";
        self.playerTurnSignLabel.text = self.player2;
    }
    else {
        label.text = self.player2;
        label.textColor = [UIColor redColor];
        self.playerTurnLabel.text = @"Player's One Turn:";
        self.playerTurnSignLabel.text = self.player1;
    }
    self.player1Turn = !self.player1Turn;
}



- (void) initializeGameBoard{
    self.boxLabels = [NSArray arrayWithObjects:self.gameBoxOne, self.gameBoxTwo, self.gameBoxThree, self.gameBoxFour, self.gameBoxFive, self.gameBoxSix, self.gameBoxSeven, self.gameBoxEight, self.gameBoxNine, nil];
    
    for(UILabel *label in self.boxLabels) {
        label.layer.borderColor = [UIColor grayColor].CGColor;
        label.layer.borderWidth = 3.0;
        
    }
//
//    if (self.gameBoard == nil) {
//        NSMutableArray *row = [NSMutableArray arrayWithObjects:0, 0, 0, nil];
//        self.gameBoard = [NSMutableArray arrayWithObject:row, row, row ];
//        self.gameboard
//    }
//    for (int i = 0; i < 3; i++) {
//        for
//    }
    
    
}
@end
