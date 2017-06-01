//
//  Doctor.h
//  Doctor&Patient
//
//  Created by Jimmy Hoang on 2017-06-01.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DoctorDelegate;

@interface Doctor : NSObject

@property (nonatomic, weak) NSString* name;
@property (nonatomic, weak) NSString* specialization;
@property (nonatomic, strong) NSMutableArray* acceptedPatients;
@property (nonatomic, weak) id <DoctorDelegate> delegate;


-(instancetype)initWithName:(NSString*) name andSpecialization:(NSString*)specialization;
-(BOOL)isHealthCardValid:(int)cardNumber;
-(NSString*)requestMedication:(NSString*)symptoms andPatient:(id <DoctorDelegate>) patient;
-(void)printPrescriptions;

@end

@protocol DoctorDelegate <NSObject>


@end
