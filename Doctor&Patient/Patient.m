//
//  Patient.m
//  Doctor&Patient
//
//  Created by Jimmy Hoang on 2017-06-01.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name andAge:(int)age
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
    }
    return self;
}

-(void)visitDoctorWithCardNumber:(int)cardNumber {
    
    // If health card is valid, add patient to accept array
    if ([self.doctor isHealthCardValid:cardNumber]) {
        [self.doctor.acceptedPatients addObject:self];
        NSLog(@"Card valid! The doctor will see you now");
    } else {
        NSLog(@"Card invalid! Doctor can't accept you");
    }
}

@end
