//
//  Patient.m
//  Lab7
//
//  Created by Giada Marconi on 2018-09-12.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "Patient.h"
//#import "Doctor.h"

@interface Patient() {
@private
    Boolean healthCard;
}

@end

@implementation Patient

- (instancetype)initWithName: (NSString *) name andWithAge: (NSUInteger) age andSymptom: symptom andHealthCard: (Boolean) card;
{
    self = [super init];
    if (self) {
        _name = name;
        _age = &age;
        _symptom = symptom;
        healthCard = card;
        _patientList = [NSMutableArray new];
    }
    return self;
}

- (Boolean) visitDoctor: (Doctor *) doctor {
    return [doctor acceptPatient:self withHealthCard:healthCard];
}

- (void) requestMedication: (Doctor *) doctor {
    // doctor checking if self (patient) is in the patient list
    if ([doctor prescribeMedication:self]) {
        NSLog(@"Got the medication!");
    } else {
        NSLog(@"REJECTED! No medication...");
    }
}

@end
