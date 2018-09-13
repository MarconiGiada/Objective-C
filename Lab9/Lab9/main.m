//
//  main.m
//  Lab9
//
//  Created by Giada Marconi on 2018-09-13.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"
#import "Javier.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
        
        // create instances of your delegate class
        Cook *giada = [Cook new];
        Javier *jav = [Javier new];
        // set truckA and truckB's delegate to your new instance.
        
        truckA.delegate = giada;
        truckB.delegate = jav;
        
        [truckA serve:10];
        [truckB serve:5];
        
        [truckA cashOut];
        [truckB cashOut];
    }
    return 0;
}
