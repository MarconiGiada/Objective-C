//
//  main.m
//  Lab1
//
//  Created by Giada Marconi on 2018-09-04.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *getUserInput(NSString *promp) {
            char inputChars[255];
            NSLog(@"%@",  promp);
            fgets(inputChars, 255, stdin);
    
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            return  [inputString  stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
};

int main(int argc, const char * argv[])  {
    @autoreleasepool {
//
//
//        // making uppercase
//        NSLog(@"%@",[input uppercaseString]);
//
//        // making lowercase
//        NSLog(@"%@", [input lowercaseString]);
//
//        // making a integer
//        int inputInt = [input intValue];
//        NSInteger inputNSInt = [input integerValue];
//
//        // making canadianize
//        NSString *canadianize = [input stringByAppendingString: @", eh?"];
//        NSLog(@"%@", canadianize);
//
//        // making respond
//        NSString *last = [input substringFromIndex: [input length] - 1];
//        if ([last isEqualToString:@"?"]) {
//            NSLog(@"%@",  @"I don't know");
//        } else if ([last isEqualToString:@"!"]) {
//             NSLog(@"%@", @"Whoa, calm down");
//        }
//
//       // making de-space-it
//        NSString *despace = [input stringByReplacingOccurrencesOfString:@" " withString:@"-"];
//        NSLog(@"%@", despace);
        
        // TODO
        // 1. Enter a String
        // 2. Select options from ooperations
        // ex.
        //       1.   Upperccase
        //       2.   Lowerccase
        //       3.   Integer
        //       4.   Canadalize
        //       5.   Respond
        //       6.   De-space-it
        //
        // 3. If user puts "q", just end it.
        
        Boolean isWorking = true;
        
        while (isWorking) {
            NSString *input =  getUserInput(@"Write Something: ");
            
            NSString *options = getUserInput(@"Choose the option:\n 1.Upperccase\n 2.Lowerccase\n3.Integer\n4.Canadalize\n5.Respond\n6.De-space-it\n q. Quit");
            NSString *number = [input substringFromIndex: [input length] ];
            if([options  isEqualToString:@"1"]) {
                NSLog(@"%@",[input uppercaseString]);
            } else if ([options isEqualToString:@"2"]) {
                NSLog(@"%@", [input lowercaseString]);
            } else if ([options isEqualToString:@"3"]) {
                NSString *canadianize = [input stringByAppendingString: @", eh?"];
                NSLog(@"%@", canadianize);
            } else if ([options isEqualToString:@"4"])  {
                NSString *canadianize = [input stringByAppendingString: @", eh?"];
                NSLog(@"%@", canadianize);
            } else if ([options isEqualToString:@"5"])  {
                NSString *last = [input substringFromIndex: [input length] - 1];
                if ([last isEqualToString:@"?"]) {
                    NSLog(@"%@",  @"I don't know");
                } else if ([last isEqualToString:@"!"]) {
                    NSLog(@"%@", @"Whoa, calm down");
                }
            } else if ([options isEqualToString:@"6"])   {
                NSString *despace = [input stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                NSLog(@"%@", despace);
            } else if ([options isEqualToString:@"q"]) {
                isWorking =false;
            }
            
        }
        return 0;
    }
}







