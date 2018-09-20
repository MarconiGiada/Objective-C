//
//  InputHandler.m
//  Lab13
//
//  Created by Giada Marconi on 2018-09-19.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *) getUserInput:(NSString *)prompt {
    char inputChars[255];
    NSLog(@"%@", prompt);
    fgets(inputChars, 255, stdin);
    NSString *result = [ NSString stringWithUTF8String:inputChars];
    NSCharacterSet *whiteSpaceAndNEwLine = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    return [result stringByTrimmingCharactersInSet:whiteSpaceAndNEwLine];
}
@end
