//
//  main.m
//  Doctor&Patient
//
//  Created by Jimmy Hoang on 2017-06-01.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Patient* patient = [[Patient alloc] initWithName:@"Jimmy" andAge:22];
        patient.doctor = [[Doctor alloc] initWithName:@"Dr.Spencer" andSpecialization:@"Neurology"];
        patient.doctor.delegate = patient;
        [patient visitDoctorWithCardNumber:543232];
        NSLog(@"The prescription is: %@",[patient.doctor requestMedication:@"coughing" andPatient:patient]);
        [patient.doctor printPrescriptions];

    }
    return 0;
}
