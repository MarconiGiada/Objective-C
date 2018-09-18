//
//  Kitchen.h
//  Lab11
//
//  Created by Giada Marconi on 2018-09-17.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@class Kitchen;

@protocol KitchenDelegate <NSObject>

- (BOOL) kitchen: (Kitchen *) kitchen sizeOfPizza: (PizzaSize) size andToppings: (NSArray *) toppings;
- (BOOL) kitchenOrderUpgrade: (Kitchen *) kitchen;

- (void) kitchenMadePizza: (Pizza *) pizza;

@end

@interface Kitchen : NSObject

- (Pizza *) makePizzaWithSize: (PizzaSize) size andToppings: (NSArray *) toppings;

- (BOOL) kitchen: (Kitchen *) kitchen sizeOfPizza: (PizzaSize) size andToppings: (NSArray *) toppings;
- (BOOL) kitchenOrderUpgrade: (Kitchen *) kitchen;

- (void) kitchenMadePizza: (Pizza *) pizza;

@property (nonatomic, weak) id <KitchenDelegate> delegate;

@end
