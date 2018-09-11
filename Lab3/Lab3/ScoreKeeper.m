//
//  ScoreKeeper.m
//  Lab3
//
//  Created by Giada Marconi on 2018-09-06.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

+ (NSString *) totalScore: (NSInteger) pos count: (NSInteger) neg {
    NSInteger sumAnswers = neg + pos;
    NSInteger average = (pos * 100) / sumAnswers;
    NSString *result = [NSString stringWithFormat:@"Score: %ld right, %0ld wrong ---- %2ld%%", (long)pos, neg, average];
    return result;
}

@end
