//
//  Patient.h
//  Lab7
//
//  Created by Giada Marconi on 2018-09-12.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@class Doctor;

@interface Patient : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSUInteger *age;
@property (nonatomic, strong) NSString *symptom;
@property (nonatomic, strong) NSMutableArray *patientList;

- (instancetype)initWithName: (NSString *) name andWithAge: (NSUInteger) age andSymptom: symptom andHealthCard: (Boolean) card;
- (Boolean) visitDoctor: (Doctor *) doctor;
- (void) requestMedication: (Doctor *) doctor;



@end
