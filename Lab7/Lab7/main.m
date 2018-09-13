//
//  main.m
//  Lab7
//
//  Created by Giada Marconi on 2018-09-12.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Patient *patient1 = [[Patient alloc] initWithName:@"Giada" andWithAge:21 andSymptom:@"Flue" andHealthCard:true];
        Patient *patient2 = [[Patient alloc] initWithName:@"Jhon Snow" andWithAge:23 andSymptom:@"Cold" andHealthCard:false];
        Doctor *doc = [[Doctor alloc]initWithName:@"Dr. Who" andWithSpecialization:@"Everithing!"];
        
        [patient1 visitDoctor:doc];
        [patient2 visitDoctor:doc];
        [patient1 requestMedication:doc];
        
        [doc prescribeMedication:patient1];
        [doc prescribeMedication:patient2];
    }
    return 0;
}

