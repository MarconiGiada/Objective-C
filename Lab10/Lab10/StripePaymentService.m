//
//  StripePaymentService.m
//  Lab10
//
//  Created by Giada Marconi on 2018-09-14.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (Boolean)canProcessPayment {
    NSInteger answer = arc4random_uniform(2);
    Boolean ans = YES;
    if (answer == 1) {
        ans = YES;
    } else {
        ans = NO;
    }
    return ans;
}

- (void)processPaymentAmount: (NSInteger) amount {
    if (self.canProcessPayment) {
        NSString *paid = [NSString stringWithFormat:@"You have to pay a total of $%ld with Stripe.", amount];
        NSLog(@"%@", paid);
    } else {
        NSString *paid = [NSString stringWithFormat:@"Your Stripe cannot process the payment at the moment. Check your account."];
        NSLog(@"%@", paid);
    }
    
}
@end
