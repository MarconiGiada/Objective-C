//
//  ScoreKeeper.h
//  Lab3
//
//  Created by Giada Marconi on 2018-09-06.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) NSInteger positiveCount;
@property (nonatomic, assign) NSInteger negativeCount;

+ (NSString *) totalScore: (NSInteger) pos count: (NSInteger) neg;

@end
