//
//  Kitchen.m
//  Lab12
//
//  Created by Giada Marconi on 2018-09-18.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "Kitchen.h"

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
        return [[Pizza alloc] initWithSIze:size andToppings:toppings];
    } else if ([self.delegate kitchen:self sizeOfPizza:size andToppings:toppings]) {
        Pizza *pizza;
        
        if ([self.delegate kitchenOrderUpgrade:self]) {
            pizza = [[Pizza alloc] initWithSIze:large andToppings:toppings];
        }
        if ([self.delegate respondsToSelector:@selector(kitchenMadePizza:)]){
            [self.delegate kitchenMadePizza:pizza];
        }
        pizza = [[Pizza alloc] initWithSIze:size andToppings:toppings];
        return pizza;
    } else {
        NSLog(@"We have all pizzas! ...Except that one");
        toppings = @[@"none"];
        Pizza *pizza = [[Pizza alloc] initWithSIze:small andToppings:toppings];
        return pizza;
    }
}

@end
