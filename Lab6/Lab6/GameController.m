//
//  GameController.m
//  Lab6
//
//  Created by Giada Marconi on 2018-09-11.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "GameController.h"
#define MAX_ROLL 5

@interface GameController()
{
    @private int rollCount;
    @private int score;
}

@end

@implementation GameController

- (instancetype) init
{
    self = [super init];
    if (self) {
        _displayDice = [NSMutableArray arrayWithObjects:[Dice dice], [Dice dice], [Dice dice], [Dice dice], [Dice dice], nil];
        rollCount = MAX_ROLL;
    }
    return self;
}

- (void) roll {
    // if I have more than 1 roll counts left, I can roll all 5 dice in the array.
    //  except for the one that are held by user.
    if (rollCount > 0) {
        for (Dice *die in _displayDice) {
            if ([die held]) {
                [die roll];
            }
        }
        rollCount --;
        NSLog(@"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        NSLog(@"~~~~~~~~~~ Remain Rolls: %d ~~~~~~~~~~", rollCount);
    } else {
        // 5. check if the game is over (rollCount)
        //     - print the currentDeck and the score (the sum of faceValues) and GAME OVER
        NSLog(@"           GAME OVER 😎               ");
        NSLog(@"~ You cannot roll more than %d times ~", MAX_ROLL);
    }
    
}

- (void) displayCurrentDeck {
    NSMutableString *currentDeck = [NSMutableString string];
    for (Dice *die in _displayDice) {
        [currentDeck appendFormat:@" %@ " , [die description]];
    }
    NSLog(@"%@", currentDeck);
}

- (void) holdDie: (NSUInteger) die {
    // 1. check if the die is already held
    
    // 2. change the held property of the die
}

- (void) resetDie {
    // 3. iterate through each die, unhold every die
}

- (void) holdAll {
    // 4. iterate through each die, hold every die
}

- (void) displayScore {
    // 6. if game is not over
    //     - print the currentDeck and the score (the sum of faceValue)
    Dice *die = [Dice new];
    for(die in _displayDice) {
        score += [die faceValue];
    }
    NSLog(@"SCORE : %d", score);
    score = 0;
}


    


@end
