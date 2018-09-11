//
//  additionQuestion.h
//  Lab5
//
//  Created by Giada Marconi on 2018-09-10.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property(nonatomic,strong) NSString *question;
@property (nonatomic,assign)NSInteger answer;
@property (nonatomic,strong)NSDate *startTime;
@property (nonatomic,strong)NSDate *endTime;
- (NSTimeInterval) answerTime;
-(void) generateQuestion;


@end
