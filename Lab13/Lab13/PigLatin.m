//
//  NSString+PigLatin.m
//  Lab13
//
//  Created by Giada Marconi on 2018-09-19.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "PigLatin.h"

@implementation PigLatin

- (NSString *)pigLatinString: (NSString *) sentence {
    
    sentence = [sentence lowercaseString];
    NSString *check;
    NSString *firstLetter;
    NSArray *cluster = @[@"ch",@"sh",@"sm",@"st",@"th",@"ps",@"ph",@"pl",@"gl"];
    NSArray *vowel = @[@"a",@"e",@"i",@"o",@"u"];
    NSArray *consonants = @[@"b",@"c",@"d",@"f",@"g",@"h",@"j",@"k",@"l",@"m",@"n",
                            @"p",@"q",@"r",@"s",@"t",@"v",@"w",@"x",@"y",@"z"];
    NSMutableString *result = [NSMutableString string];
    Boolean isCluster = false;
    
    if(sentence.length > 1) {
        check = [sentence substringToIndex:2];
        for (NSInteger i = 0; i < cluster.count; i++) {
            NSString *cl = [cluster objectAtIndex:i];
            if([check isEqualToString: cl]) {
                [result appendString: [sentence substringFromIndex:2]];
                [result appendString: check];
                [result appendString: @"ay"];
                isCluster = true;
                i = cluster.count;
            }
        }
    } else {
        firstLetter = [sentence substringToIndex:1];
    }
    firstLetter = [sentence substringToIndex:1];
    if(!isCluster){
        for(NSInteger i = 0; i < vowel.count; i++) {
            NSString *vow = [vowel objectAtIndex:i];
            if([firstLetter isEqualToString:vow]) {
                [result appendString: sentence];
                [result appendString: @"ay"];
                i = vowel.count;
            }
        }
        if(result.length == 0){
            for(NSInteger i = 0; i < consonants.count; i++) {
                NSString *cons = [consonants objectAtIndex:i];
                if([firstLetter isEqualToString:cons]){
                    [result appendString: [sentence substringFromIndex:1]];
                    [result appendString: firstLetter];
                    [result appendString: @"ay"];
                    i = consonants.count;
                }
            }
        }
    }
    NSString *piglatin = result;
    return piglatin;
}

@end
