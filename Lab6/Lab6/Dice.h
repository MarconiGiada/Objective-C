//
//  Dice.h
//  Lab6
//
//  Created by Giada Marconi on 2018-09-11.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic, assign) NSInteger faceValue;
@property (nonatomic, assign) Boolean held;

+ (instancetype) dice;

- (void) roll;

@end
