//
//  InputHandler.m
//  Lab10
//
//  Created by Giada Marconi on 2018-09-14.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *) getUserInputWithLength: (int) maxLength widthPrompt: (NSString* ) prompt {
    if (maxLength < 1) {
        maxLength = 255;
    }
    NSLog(@"%@", prompt);
    char inputChars[maxLength];
    const char *cstring = fgets(inputChars, maxLength, stdin);
    NSString *result = [NSString stringWithCString:cstring encoding: NSUTF8StringEncoding];
    // to create a new array with whitespace and new line characters
    NSCharacterSet *whitespaceAndNewLine = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    // return the trimmed result of the whitespaceAndNewLine array (no white space or new lines)
    return [result stringByTrimmingCharactersInSet: whitespaceAndNewLine];
}

@end
