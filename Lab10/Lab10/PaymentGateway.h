//
//  PaymentGateway.h
//  Lab10
//
//  Created by Giada Marconi on 2018-09-14.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PaymentGateway;

@protocol PaymentDelegate <NSObject>

- (void)processPaymentAmount: (NSInteger) amount;

- (Boolean)canProcessPayment;

@end

@interface PaymentGateway : NSObject

- (void) processPaymentAmount: (NSInteger) amount;
- (Boolean)canProcessPayment;

@property (nonatomic, weak) id <PaymentDelegate> delegate;

@end
