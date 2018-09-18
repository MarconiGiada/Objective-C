//
//  CheeryManager.m
//  Lab11
//
//  Created by Giada Marconi on 2018-09-17.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "FirstManager.h"

@implementation FirstManager

- (BOOL) kitchen: (Kitchen *) kitchen sizeOfPizza: (PizzaSize) size andToppings:(NSArray *)toppings {
    return YES;
}

- (BOOL) kitchenOrderUpgrade:(Kitchen *)kitchen {
    return YES;
}

- (void) kitchenMadePizza: (Pizza *) pizza {
    NSLog(@"Here your Pizza! Enjoy it!");
}

@end
