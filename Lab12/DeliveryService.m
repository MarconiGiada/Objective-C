//
//  DeliveryService.m
//  Lab12
//
//  Created by Giada Marconi on 2018-09-18.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "DeliveryService.h"
#import "Pizza.h"

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _car = [DeliveryCar new];
        _infoOfThePizzasDelivered = [NSMutableArray array];
    }
    return self;
}

- (void) deliverPizza:(Pizza *) pizza {
    [self.infoOfThePizzasDelivered addObject:[pizza description]];
    [self.car deliverPizza: pizza];
    [self description];
}

@end
