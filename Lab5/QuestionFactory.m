//
//  QuestionFactory.m
//  Lab5
//
//  Created by Giada Marconi on 2018-09-10.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory
- (instancetype) init{
    self = [super init];
    if (self) {
        _questionTypes = @[@"AdditionQuestion", @"SubtractionQuestion", @"MoltiplicationQuestion", @"DivisionQuestion" ];
    }
    return self;
}
- (Question *) generateRandomQuestion {
    // return an instance of +, -, *, / Question object.
    // AdditionQuestion, SubstractionQuestion, MoltiplicationQuestion, DisionQuestion
    NSString *type = [_questionTypes objectAtIndex:arc4random_uniform(4) ];
    // [[AdditionQuestion alloc] init];
    return [[NSClassFromString(type) alloc] init];
}
@end
