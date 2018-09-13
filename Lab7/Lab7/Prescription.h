//
//  Prescription.h
//  Lab7
//
//  Created by Giada Marconi on 2018-09-12.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

@interface Prescription : NSObject

- (instancetype) initWithDoctorName: (NSString *) doctorName andDoctorSpecialization: (NSString *) doctorSpecialization andPatientName: (NSString *) patientName andPatientSymptoms: (NSString *) patientSymptoms;

@property (nonatomic, strong) NSString *doctorName;
@property (nonatomic, strong) NSString *doctorSpecialization;
@property (nonatomic, strong) NSString *patientName;
@property (nonatomic, strong) NSString *patientSymptoms;

@end
