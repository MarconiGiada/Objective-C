//
//  main.m
//  Lab6
//
//  Created by Giada Marconi on 2018-09-11.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GameController *player1 = [[GameController alloc] init];
        
        while (true) {
            NSString *input = [InputHandler getUserInputWithLength:10 withPrompt:
                               @"\n ☞ 'roll' to roll the dice.\n ☞ 'hold' to hold a die\n ☞ 'reset' to unhold all the dice\n ☞ 'hold all' to hold all the dice\n ☞ 'display' to display current score\n ☞ 'quit' to exit the game."];
            
            if ([input isEqualToString:@"roll"]) {
                [player1 roll];
                [player1 displayCurrentDeck];
                [player1 displayScore];
            } else if ([input isEqualToString:@"hold"]) {
                [player1 displayCurrentDeck];
                NSString *holdopt = [InputHandler getUserInputWithLength:10 withPrompt:@"\n Which one do you want to hold?"];
                NSInteger optsel =  [holdopt integerValue];
                [player1 holdDie:optsel - 1];
                [player1 displayCurrentDeck];
            } else if([input isEqualToString:@"reset"]) {
                [player1 resetDice];
                [player1 displayCurrentDeck];
                
            } else if([input isEqualToString:@"hold all"]) {
                [player1 holdAll];
                [player1 displayCurrentDeck];
            } else if([input isEqualToString:@"display"]) {
                [player1 displayScore];
                [player1 displayCurrentDeck];
            }
            else if ([input isEqualToString:@"quit"]){
                break;
            }
        }
        
    }
    return 0;
}
