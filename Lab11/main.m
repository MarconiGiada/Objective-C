//
//  main.m
//  Lab11
//
//  Created by Giada Marconi on 2018-09-17.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "ManagerNoAnchovies.h"
#import "FirstManager.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSLog(@"Pick a Manager:\n1. Lunch Manager\n2. Dinner Manager\n3. No Manager");
        
        NSLog(@"> ");
        char str[100];
        fgets (str, 100, stdin);
        
        NSString *managerChoosen = [[NSString alloc] initWithUTF8String:str];
        managerChoosen = [managerChoosen stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSInteger option = [managerChoosen integerValue];
        
        Kitchen *restaurant = [Kitchen new];
        ManagerNoAnchovies *noAnchovy = [ManagerNoAnchovies new];
        FirstManager *everithingIsOk = [FirstManager new];
        
        switch (option) {
            case 1:
                restaurant.delegate = noAnchovy;
                break;
            case 2:
                restaurant.delegate = everithingIsOk;
                break;
            case 3:
                restaurant.delegate = nil;
                break;
            default:
                break;
        }
        NSLog(@"Choose the size of your pizza and the 3 toppings that ypu desire:");
        while (TRUE) {
            // Loop forever
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            int pizzaSize = 0;
            if ([commandWords[0] isEqualToString:@"small"]) {
                pizzaSize = small;
            }else if ([commandWords[0] isEqualToString:@"medium"]) {
                pizzaSize = medium;
            }else if ([commandWords[0] isEqualToString:@"large"]){
                pizzaSize = large;
            }
            NSUInteger count = commandWords.count;
            NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, (count-1))];
            
            if ([commandWords containsObject:@"pepperoni"]) {
                Pizza *pizza = [Pizza largePepperoni];
                NSLog(@"%@",pizza);
            }
            else if ([commandWords containsObject:@"meat"]) {
                Pizza *pizza = [Pizza meatLoversWithSize:pizzaSize];
                NSLog(@"%@",pizza);
            } else {
                Pizza *pizza = [restaurant makePizzaWithSize:pizzaSize andToppings:toppings ];
                if ([pizza.toppings containsObject:@"none"]) {
                    NSLog(@"Sorry, we don't have it!");
                } else {
                    NSLog(@"%@", pizza);
                }
            }
        }
    }
    return 0;
}
