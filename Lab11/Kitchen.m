//
//  Kitchen.m
//  Lab11
//
//  Created by Giada Marconi on 2018-09-17.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen

-(BOOL) kitchen: (Kitchen *) kitchen sizeOfPizza: (PizzaSize) size andToppings:(NSArray *)toppings {
    return [self.delegate kitchen:kitchen sizeOfPizza:size andToppings:toppings];
}

- (BOOL) kitchenOrderUpgrade: (Kitchen *) kitchen {
    return [self.delegate kitchenOrderUpgrade:kitchen];
}

- (void) kitchenMadePizza: (Pizza *) pizza {
    
}

- (Pizza *) makePizzaWithSize: (PizzaSize) size andToppings: (NSArray *) toppings {
    if (self.delegate == nil) {
        return [[Pizza alloc] initWithSize:size andToppings:toppings];
    } else if ([self.delegate kitchen:self sizeOfPizza:size andToppings:toppings]) {
        Pizza *pizza;
        if ([self.delegate kitchenOrderUpgrade:self]) {
            pizza = [[Pizza alloc] initWithSize:large andToppings:toppings];
        }
        if ([self.delegate respondsToSelector:@selector(kitchenMadePizza:)]){
            [self.delegate kitchenMadePizza:pizza];
        }
        pizza = [[Pizza alloc] initWithSize:size andToppings:toppings];
        return pizza;
    } else {
        NSLog(@"We have all pizzas! ...Except that one");
        toppings = @[@"none"];
        Pizza *pizza = [[Pizza alloc] initWithSize:small andToppings:toppings];
        return pizza;
    }
}

@end
