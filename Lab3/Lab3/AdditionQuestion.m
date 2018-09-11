//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Giada Marconi on 2018-09-06.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "AdditionQuestion.h"
// Make random Math question
// Compute the answer
@implementation AdditionQuestion
-(instancetype)init
{
    self = [super init]; {
        if (self ) {
            // generate 2 random ints using arc4random
            int left = arc4random_uniform(90) + 10;
            int right = arc4random_uniform(90) + 10;
            // make question string
            _question = [NSString stringWithFormat:@"%d + %d = ", left, right];
            // get the answer and assign to answer
            _answer = left + right;
        }
        return self;
    }
}
@end
