//
//  ScoreKeeper.m
//  Lab5
//
//  Created by Giada Marconi on 2018-09-10.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (void) scoreRight: (int) right andWrong: (int) wrong {
    int rate = ((float) right / (right + wrong)) * 100;
    NSLog(@“score: %d right, %d wrong --- %d%%“, right, wrong, rate);
}
@end
