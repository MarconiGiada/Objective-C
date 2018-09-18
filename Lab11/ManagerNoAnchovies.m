//
//  AnchoviesManager.m
//  Lab11
//
//  Created by Giada Marconi on 2018-09-17.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "ManagerNoAnchovies.h"

@implementation ManagerNoAnchovies

- (BOOL) kitchen:(Kitchen *)kitchen sizeOfPizza:(PizzaSize)size andToppings:(NSArray *)toppings {
    if ([toppings containsObject:@"anchovies"]) {
    return NO;
    }
    return YES;
}

-(BOOL) kitchenOrderUpgrade:(Kitchen *)kitchen {
    return NO;
}

- (void) kitchenMadePizza:(Pizza *)pizza {
    
}

@end
