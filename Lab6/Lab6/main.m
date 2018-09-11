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
        
        while (true){
            NSString *input = [InputHandler getUserInputWithLength:10 withPrompt:@"\n 'ROLL'  to roll the dice \n 'QUIT' to quit the game"];
            
            if ([input isEqualToString:@"roll"]) {
                [player1 roll];
                [player1 displayCurrentDeck];
                [player1 displayScore];
            } else if ([input isEqualToString:@"quit"]){
                break;
            }
        }
        
    }
    return 0;
}
