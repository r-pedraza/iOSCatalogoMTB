//
//  RPLBrandModel.h
//  MTBProyect
//
//  Created by Raul Pedraza on 24/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPLModel.h"

@interface RPLBrandModel : NSObject
//Propiedades para contar el numero de bicicletas de cada marca.
//Propiedad de solo lectura, solo creara set no get., tendremos que construir nuestro propio getter.
@property(readonly,nonatomic)int scottBikeCount;
@property(readonly,nonatomic)int specializedBikeCount;
@property(readonly,nonatomic)int trekBikeCount;


//Métodos para contar el umero de biciletas de cada marca
-(RPLModel*)sctottBikeAtIndex:(int)index;
-(RPLModel*)specializedBikeAtIndex:(int)index;
-(RPLModel*)trekBikeAtIndex:(int)index;

@end
