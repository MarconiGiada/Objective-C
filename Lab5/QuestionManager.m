//
//  QuestionManager.m
//  Lab5
//
//  Created by Giada Marconi on 2018-09-10.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager
- (instancetype) init{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray array];
    }
    return self;
}
- (NSString *) timeOutput {
    Question *last = [_questions objectAtIndex:[_questions count] -1];
    Question *first = [_questions objectAtIndex:0];
    
    NSTimeInterval timeInterval = [[last endTime] timeIntervalSinceDate:[first startTime]];
    long second =  lroundf(timeInterval);
    
    return [NSString stringWithFormat:@"Total Time: %lus, Average Time: %lus", second, second / [_questions count]];
}
@end
