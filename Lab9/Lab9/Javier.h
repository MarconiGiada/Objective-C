//
//  Javier.h
//  Lab9
//
//  Created by Giada Marconi on 2018-09-13.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"

@interface Javier : NSObject <FoodTruckDelegate>

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;

@end
