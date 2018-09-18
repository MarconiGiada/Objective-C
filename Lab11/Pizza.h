//
//  Pizza.h
//  Lab11
//
//  Created by Giada Marconi on 2018-09-17.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    small,
    medium,
    large
} PizzaSize;

@interface Pizza : NSObject

@property (nonatomic, assign) PizzaSize size;
@property (nonatomic, strong) NSArray *toppings;

-(instacetype) initWithSize: (PizzaSize) size andToppings: (NSArray *) toppings;
+ (Pizza *) largePepperoni;
+ (Pizza *) meatLoversWithSize: (PizzaSize)size;
- (NSString *) description;


@end
