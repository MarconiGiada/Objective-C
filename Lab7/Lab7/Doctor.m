//
//  Doctor.m
//  Lab7
//
//  Created by Giada Marconi on 2018-09-12.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"

@interface Doctor() {
@private
    NSMutableArray *patientList;
    NSMutableArray *prescriptionList;
}
@end

@implementation Doctor

- (instancetype)initWithName: (NSString *) name andWithSpecialization: (NSString *) specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        patientList = [NSMutableArray new];
        prescriptionList = [NSMutableArray new];
    }
    return self;
}

- (Boolean) acceptPatient: (Patient *) patient withHealthCard: (Boolean) healthCard {
    if (healthCard) {
        [patientList addObject:patient];
        NSLog(@"Successfully added to the patient list.");
        return YES;
    } else {
        NSLog(@"Invalid HealthCard");
        return NO;
    }
}

- (Boolean) prescribeMedication: (Patient *) patient {
    if ([patientList containsObject:patient]) {
        NSLog(@"Medication on the way...");
        // 1. check the symptom (patient class).
        [patient symptom];
        // 2. create a prescription.
        Prescription *prescription = [[Prescription new]initWithDoctorName:_name andDoctorSpecialization:_specialization  andPatientName:[patient name] andPatientSymptoms:[patient symptom]];
        // 3. give the prescription to the patient.
        [prescriptionList addObject:prescription];
        [[patient patientList] addObject: prescription];
        // 4A. give the medication.
        [self medication:prescription];
        return YES;
    } else {
        NSLog(@"You are not my patient.");
        return NO;
    }
}

// 4B. give the medication.
- (Boolean) medication : (Prescription *) prescription{
    if([prescriptionList containsObject:prescription]){
        NSLog(@"Now the patient have his medication!");
        return true;
    }else{
        NSLog(@"No prescription? No medication!");
        return false;
    }
    
}

@end
