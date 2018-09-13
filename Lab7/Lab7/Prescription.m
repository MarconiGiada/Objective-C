//
//  Prescription.m
//  Lab7
//
//  Created by Giada Marconi on 2018-09-12.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription

- (instancetype) initWithDoctorName: (NSString *) doctorName andDoctorSpecialization: (NSString *) doctorSpecialization andPatientName: (NSString *) patientName andPatientSymptoms: (NSString *) patientSymptoms
{
    self = [super init];
    if (self) {
        _doctorName = doctorName;
        _doctorSpecialization = doctorSpecialization;
        _patientName = patientName;
        _patientSymptoms = patientSymptoms;
    }
    return self;
}

@end
