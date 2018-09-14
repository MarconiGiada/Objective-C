//
//  PaymentGateway.m
//  Lab10
//
//  Created by Giada Marconi on 2018-09-14.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void) processPaymentAmount: (NSInteger) amount {
    [self.delegate processPaymentAmount:amount];
}

- (Boolean)canProcessPayment {
    return [self.delegate canProcessPayment];
}

@end
