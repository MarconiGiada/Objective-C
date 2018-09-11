//
//  main.m
//  Lab3
//
//  Created by Giada Marconi on 2018-09-06.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

//NSString *getUserInput(int maxLength, NSString *prompt) {
//    if ( maxLength < 1) {
//        maxLength = 255;
//    }
//    NSLog(@"%@", prompt);
//    char inputChars [maxLength];
//    const char *cstring = fgets(inputChars, maxLength, stdin);
//    NSString *result = [NSString stringWithCString: cstring  encoding:NSUTF8StringEncoding];
//    NSCharacterSet *whitespaceAndNewLine = [NSCharacterSet whitespaceAndNewlineCharacterSet];
//
//    return [result stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet] ];
//}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        NSInteger positiveC = 0;
        NSInteger negativeC = 0;
        while (gameOn) {
            AdditionQuestion *q = [AdditionQuestion new];
            NSString *userAnswer = [InputHandler getUserInputWithLength:10 widthPrompt: [q question]];
            NSInteger userAnsInt = [userAnswer integerValue];
            NSString *scoreOutput = [ScoreKeeper totalScore:positiveC count:negativeC];
            if ([q answer] == userAnsInt) {
                NSLog(@"Right!");
                positiveC++;
                NSLog(@"%@", scoreOutput);
                
            } else if([userAnswer isEqualToString:@"quit"]) {
                gameOn = NO;
            } else {
                NSLog(@"Wrong!");
                negativeC++;
                NSLog(@"%@", scoreOutput);
            }
        }
    }
    return 0;
}
