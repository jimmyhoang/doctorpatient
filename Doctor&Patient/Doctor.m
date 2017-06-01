//
//  Doctor.m
//  Doctor&Patient
//
//  Created by Jimmy Hoang on 2017-06-01.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor {
    NSMutableDictionary* patientPrescriptions;

}

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _acceptedPatients = [[NSMutableArray alloc] init];
        patientPrescriptions = [[NSMutableDictionary alloc] init];
    }
    return self;
}

-(BOOL)isHealthCardValid:(int)cardNumber {
    
    if ((cardNumber < 599999) && (cardNumber > 499999)) {
        return YES;
    } else {
        return NO;
    }
}

-(NSString*)requestMedication:(NSString*)symptoms andPatient:(id <DoctorDelegate>) patient {
    NSString* prescription = [[NSString alloc] init];
    
    if ([self.acceptedPatients containsObject:patient]) {
        NSUInteger index = [self.acceptedPatients indexOfObject:patient];
        NSString* name = [[self.acceptedPatients objectAtIndex:index] name];
        
        if ([symptoms localizedCaseInsensitiveContainsString:@"coughing"]) {
            prescription = @"Guaifenesin";
            patientPrescriptions[name] = prescription;
        } else if ([symptoms localizedCaseInsensitiveContainsString:@"sneezing"]) {
            prescription = @"Diphenhydramine";
            patientPrescriptions[name] = prescription;
        } else if ([symptoms localizedCaseInsensitiveContainsString:@"breathing"]) {
            prescription = @"Asthmanefrin";
            patientPrescriptions[name] = prescription;
        } else if ([symptoms localizedCaseInsensitiveContainsString:@"itchiness"]) {
            prescription = @"Clemastine";
            patientPrescriptions[name] = prescription;
        } else {
            prescription = @"Sorry I don't know";
        }
    } else {
        prescription = @"Sorry you are not a accepted patient";
    }
    
    return prescription;
}

-(void)printPrescriptions {
    
    for (NSString* patientN in patientPrescriptions.allKeys)
    {
        NSLog(@"%@ prescription is %@",patientN,patientPrescriptions[patientN]);
    }
}


@end
