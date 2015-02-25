//
//  RPLModel.h
//  MTBProyect
//
//  Created by Raul Pedraza on 23/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import <Foundation/Foundation.h>
@class UIImage;

@interface RPLModel : NSObject


//Constants

//Properties
@property(strong,nonatomic)NSString *type;
@property(strong,nonatomic)NSString *sizeWheel;
@property(strong,nonatomic)NSString *materialFrame;
@property(strong,nonatomic)NSString *brand;
@property(strong,nonatomic)NSString *components;
@property(strong,nonatomic)NSString *info;
@property(strong,nonatomic)NSURL *bikeWeb;
@property(strong,nonatomic)UIImage *photo;



+(instancetype)bikeWithType:(NSString*)type
                  sizeWheel:(NSString*)sizeWheel
              materialFrame:(NSString*)materialFrame
                      brand:(NSString*)brand
                 components:(NSString*)components
                       info:(NSString*)info
                    bikeWeb:(NSURL*)bikeWeb
                      photo:(UIImage*)photo;




+(instancetype)bikeWithRoad:(NSString*)type
                  sizeWheel:(NSString*)sizeWheel
              materialFrame:(NSString*)materialFrame
                      brand:(NSString*)brand
                 components:(NSString*)components
                       info:(NSString*)info
                    bikeWeb:(NSURL*)bikeWeb
                      photo:(UIImage*)photo;

//Init Designed
-(id)initWithType:(NSString*)type
        sizeWheel:(NSString*)sizeWheel
    materialFrame:(NSString*)materialFrame
            brand:(NSString*)brand
       components:(NSString*)components
             info:(NSString*)info
          bikeWeb:(NSURL*)bikeWeb
            photo:(UIImage*)photo;
//Init Convenience
-(id)initwithRoad:(NSString*)type
        sizeWheel:(NSString*)sizeWheel
    materialFrame:(NSString*)materialFrame
            brand:(NSString*)brand
       components:(NSString*)components
             info:(NSString*)infotypeLbel
          bikeWeb:(NSURL*)bikeWeb
            photo:(UIImage*)photo;

@end
