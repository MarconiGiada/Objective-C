//
//  DeliveryService.h
//  Lab12
//
//  Created by Giada Marconi on 2018-09-18.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeliveryCar.h"

@class Pizza;

@interface DeliveryService : NSObject

@property (nonatomic, strong) DeliveryCar *car;
@property (nonatomic, strong) NSMutableArray *infoOfThePizzasDelivered;

- (void) deliverPizza: (Pizza *) pizza;

@end
