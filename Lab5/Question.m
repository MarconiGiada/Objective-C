//
//  additionQuestion.m
//  Lab5
//
//  Created by Giada Marconi on 2018-09-10.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "Question.h"

@implementation Question : NSObject
-(instancetype)init
{
    self = [super init];
    if(self){
        //generate 2 random ints arc4random_uniform
        int left = arc4random_uniform(90)+10;
        int right = arc4random_uniform(90)+ 10;
//        // make question string
//        _question = [NSString stringWithFormat:@"%d+%d=",left,right];
//        // get the answer and assign to answer
//        _answer = left + right;
        _startTime = [NSDate date];
    }
    return self;
}
-(NSInteger)answer{
    _endTime=[NSDate date];
    return _answer;
    
}
- (NSTimeInterval) answerTime {
    return [_endTime timeIntervalSinceDate: _startTime];
}
- (void) generateQuestion{
    
}
@end
