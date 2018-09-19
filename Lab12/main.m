//
//  main.m
//  Lab12
//
//  Created by Giada Marconi on 2018-09-18.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"
#import "ManagerNoAnchovies.h"
#import "FirstManager.h"
#import "DeliveryService.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        NSLog(@"Pick a Manager:\n1. Amazing Manager\n2. AnchovyHaters Manager\n3. Noone");
        
        NSLog(@"> ");
        char str[100];
        fgets (str, 100, stdin);
        
        NSString *managerChoosen = [[NSString alloc] initWithUTF8String:str];
        managerChoosen = [managerChoosen stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSInteger option = [managerChoosen integerValue];
        
        Kitchen *restaurant = [Kitchen new];
        ManagerNoAnchovies *noAnchovy = [ManagerNoAnchovies new];
        FirstManager *everithingIsOk = [FirstManager new];
        DeliveryService *delServ = [DeliveryService new];
        
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
        
        
        NSLog(@"Choose the size of your pizza and the 3 toppings that you desire:");
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
            
            NSLog(@"See info about all the delivery (y/n)");
            NSLog(@">");
            char cstr [100];
            fgets(cstr, 100, stdin);
            NSString *info = [[NSString alloc] initWithUTF8String:cstr];
            info = [info stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            if ([info isEqualToString:@"y"]) {
                NSLog(@"%@", delServ);
            }
        }
    }
    return 0;
}
