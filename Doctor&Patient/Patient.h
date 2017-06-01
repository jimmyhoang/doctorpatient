//
//  Patient.h
//  Doctor&Patient
//
//  Created by Jimmy Hoang on 2017-06-01.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject <DoctorDelegate>

@property (nonatomic, strong) Doctor* doctor;
@property (nonatomic, strong) NSString* name;
@property (nonatomic, assign) int age;

-(void)visitDoctorWithCardNumber:(int)cardNumber;
-(instancetype)initWithName:(NSString*)name andAge:(int)age;


@end
