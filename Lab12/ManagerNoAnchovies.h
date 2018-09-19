//
//  AnchoviesManager.h
//  Lab12
//
//  Created by Giada Marconi on 2018-09-18.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"

@class DeliveryService;

@interface ManagerNoAnchovies : NSObject <KitchenDelegate>

@property (nonatomic, strong) DeliveryService *service;

- (instancetype) initWithDelivertService: (DeliveryService *) delServ;


@end
