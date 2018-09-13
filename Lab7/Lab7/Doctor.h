//
//  Doctor.h
//  Lab7
//
//  Created by Giada Marconi on 2018-09-12.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@class Patient;

@interface Doctor : NSObject


@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *specialization;

- (instancetype)initWithName: (NSString *) name andWithSpecialization: (NSString *) specialization;
- (Boolean) acceptPatient: (Patient *) patient withHealthCard: (Boolean) healthCard;
- (Boolean) prescribeMedication: (Patient *) patient;

@end
