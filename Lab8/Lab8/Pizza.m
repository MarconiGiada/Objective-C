//
//  Pizza.m
//  Lab8
//
//  Created by Giada Marconi on 2018-09-13.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray *) toppings
{
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}

+(Pizza *) largePepperoni {
    return [[Pizza alloc] initWithSize:large andToppings:@[@"pepperoni", @"cheese",@"cheese"]];
}

+(Pizza *) meatLoversWithSize: (PizzaSize) size {
    return [[Pizza alloc] initWithSize:size andToppings:@[@"chicken", @"beef", @"pork"]];
}

- (NSString *)description
{
    NSString *pizzaSize;
    
    switch (_size) {
        case small:
            pizzaSize = @"Small";
        case medium:
            pizzaSize = @"Medium";
        case large:
            pizzaSize = @"Large";
        default:
            break;
    }
    return [NSString stringWithFormat:@"Size: %@, Toppings: %@, %@, %@", _size, _toppings[0], _toppings[1], _toppings[2]];
}
@end
