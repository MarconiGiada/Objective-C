//
//  main.m
//  Lab13
//
//  Created by Giada Marconi on 2018-09-19.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PigLatin.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        PigLatin *game = [PigLatin new];
        
        NSLog(@"\nThis Is PIG LATIN!");
        Boolean next = true;
        NSMutableString *piglatin = [NSMutableString string];
        
        
        while(next){
            [piglatin setString:@""];
            NSLog(@"\nWrite a sentence to convert with Pig Latin: \n");
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            
            NSArray *words = [inputString componentsSeparatedByString:@" "];
            
            for(int i = 0; i < words.count; i++) {
                [piglatin appendString:[game pigLatinString: [words objectAtIndex: i]]];
                [piglatin appendString:@" "];
            }
            NSString *result = piglatin;
            NSLog(@"\n%@",[result capitalizedString]);
            
            NSLog(@"\nPlay Again? (Y/N): \n");
            NSLog(@"> ");
            char str1[100];
            fgets (str1, 100, stdin);
            
            NSString *newGame = [[NSString alloc] initWithUTF8String:str1];
            newGame = [newGame stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
            
            if([newGame isEqualToString:@"N\n"]){
                next = false;
            } else if ([newGame isEqualToString:@"Y\n"]) {
                next = true;
            } else {
                return 0;
            }
        }
    }
    return 0;
}
