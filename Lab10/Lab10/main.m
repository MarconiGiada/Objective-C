//
//  main.m
//  Lab10
//
//  Created by Giada Marconi on 2018-09-14.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSInteger totalPrice = arc4random_uniform(900) + 100;
        NSString *startMessage = [NSString stringWithFormat: @"Thank you for your shopping at Acme.com Your total today is $%lu \nPlease select your payment method: \n1: Paypal \n2: Stripe \n3: Amazon \n4: ApplePay", totalPrice];
        NSString *input = [InputHandler getUserInputWithLength:10 widthPrompt: startMessage];
        NSInteger inputv = [input integerValue];
        PaymentGateway *pay = [[PaymentGateway alloc] init];
        PaypalPaymentService *paypal = [PaypalPaymentService new];
        StripePaymentService *stripe = [StripePaymentService new];
        AmazonPaymentService *amazon = [AmazonPaymentService new];
        switch (inputv) {
            case 1:
                pay.delegate = paypal;
                [pay processPaymentAmount: totalPrice];
                break;
            case 2:
                pay.delegate = stripe;
                [pay processPaymentAmount:totalPrice];
                break;
            case 3:
                pay.delegate = amazon;
                [pay processPaymentAmount:totalPrice];
                break;
                
            default:
                break;
        }
    }
    return 0;
}

        
        
