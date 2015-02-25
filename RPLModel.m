//
//  RPLModel.m
//  MTBProyect
//
//  Created by Raul Pedraza on 23/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import "RPLModel.h"

@implementation RPLModel



#pragma mark - Class Methods


+(instancetype)bikeWithType:(NSString*)type
                  sizeWheel:(NSString*)sizeWheel
              materialFrame:(NSString*)materialFrame
                      brand:(NSString*)brand
                 components:(NSString*)components
                       info:(NSString*)info
                    bikeWeb:(NSURL*)bikeWeb
                      photo:(UIImage*)photo{

    
    return [[self alloc]initWithType:type
                           sizeWheel:sizeWheel
                       materialFrame:materialFrame
                               brand:brand
                          components:components
                                info:info
                             bikeWeb:(NSURL*)bikeWeb
                               photo:photo];

    
}




+(instancetype)bikeWithRoad:(NSString*)type
                  sizeWheel:(NSString*)sizeWheel
              materialFrame:(NSString*)materialFrame
                      brand:(NSString*)brand
                 components:(NSString*)components
                       info:(NSString*)info
                    bikeWeb:(NSURL*)bikeWeb
                      photo:(UIImage*)photo{
    
    
    return [[self alloc]initwithRoad:type
                           sizeWheel:sizeWheel
                       materialFrame:materialFrame
                               brand:brand
                          components:components
                                info:info
                             bikeWeb:(NSURL*)bikeWeb
                               photo:(UIImage*)photo];

}

#pragma mark - Init

//Init Designed
-(id)initWithType:(NSString*)type
        sizeWheel:(NSString*)sizeWheel
    materialFrame:(NSString*)materialFrame
            brand:(NSString*)brand
       components:(NSString*)components
             info:(NSString *)info
          bikeWeb:(NSURL*)bikeWeb
            photo:(UIImage*)photo{

    if(self =[super init]){
    
        _type=type;
        _sizeWheel=sizeWheel;
        _materialFrame=materialFrame;
        _brand=brand;
        _components=components;
        _info=info;
        _bikeWeb=bikeWeb;
        _photo=photo;
    
    
    }
    
    return self;

}


//Init Convenience
-(id)initwithRoad:(NSString*)type
        sizeWheel:(NSString*)sizeWheel
    materialFrame:(NSString*)materialFrame
            brand:(NSString*)brand
       components:(NSString*)components
             info:(NSString*)info
          bikeWeb:(NSURL*)bikeWeb
            photo:(UIImage*)photo{

    return [self initWithType:@"Road"
                    sizeWheel:@"675lb"
                materialFrame:materialFrame
                        brand:brand
                   components:components
                         info:info
                      bikeWeb:(NSURL*)bikeWeb
                        photo:photo];

}


@end
