//
//  RPLBrandModel.m
//  MTBProyect
//
//  Created by Raul Pedraza on 24/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import "RPLBrandModel.h"
@import UIKit;

@interface RPLBrandModel ()


@property(strong,nonatomic) NSArray *scott;
@property(strong,nonatomic) NSArray *specialized;
@property(strong,nonatomic) NSArray *trek;
@property(strong,nonatomic) NSArray *intense;


@end

@implementation RPLBrandModel



#pragma mark - Properties

//Getters personalizados, devuleven un entero mostrando el número de elementos que contiene el array.

-(int)scottBikeCount{
    
    return [self.scott count];

}
-(int)specializedBikeCount{
    
    return [self.specialized count];
    
}
-(int)trekBikeCount{
    
    return [self.trek count];
    
}

-(int)intenseBikeCount{

    return [self.intense count];
}

-(instancetype)init{
    
    
    if (self=[super init]) {
        
        RPLModel *scott1=[[RPLModel alloc]initWithType:@"MTB"
                                            sizeWheel:@"27,5"
                                        materialFrame:@"Carbono"
                                                brand:@"Scott spark rc 700"
                                           components:@"XX1" info:@"sdhfjksdhfuhrsuhfiohsriohfiohrsiofghiorhiohioghiohguihpiushupithguihheroishguisohrgiohirosthgiohrtigoeriohgiortgiohewrioghioherguihweiueiruwhguierhgiouherioheriuwghuirw`hgiurtwhgiutrwhg8oiehgoierioghtiroeghjioerhtgiohweioghwerieiorw`ghioer"
                                              bikeWeb:[NSURL URLWithString:@"https://www.scott-sports.com/us/en/products/238185008/SCOTT-Spark-700-RC-Bike/"]
                                                photo:[UIImage imageNamed:@"scott.jpg"]];
        
        RPLModel *specialized1=[[RPLModel alloc]initWithType:@"MTB"
                                            sizeWheel:@"29"
                                        materialFrame:@"Carbono"
                                                brand:@"Specialized Epic World Cup"
                                           components:@"XX1" info:@"sdhfjksdhfuhrsuhfiohsriohfiohrsiofghiorhiohioghiohguihpiushupithguihheroishguisohrgiohirosthgiohrtigoeriohgiortgiohewrioghioherguihweiueiruwhguierhgiouherioheriuwghuirw`hgiurtwhgiutrwhg8oiehgoierioghtiroeghjioerhtgiohweioghwerieiorw`ghioer"
                                              bikeWeb:[NSURL URLWithString:@"http://www.specialized.com/es/es/bikes/mountain/epic/sworks-epic-29-world-cup"]
                                                photo:[UIImage imageNamed:@"specialized.jpg"]];
        
        RPLModel *trek1=[[RPLModel alloc]initWithType:@"MTB"
                                            sizeWheel:@"29"
                                        materialFrame:@"Carbono"
                                                brand:@"Trek SUperfly"
                                           components:@"XTR" info:@"sdhfjksdhfuhrsuhfiohsriohfiohrsiofghiorhiohioghiohguihpiushupithguihheroishguisohrgiohirosthgiohrtigoeriohgiortgiohewrioghioherguihweiueiruwhguierhgiouherioheriuwghuirw`hgiurtwhgiutrwhg8oiehgoierioghtiroeghjioerhtgiohweioghwerieiorw`ghioer"
                                              bikeWeb:[NSURL URLWithString:@"http://www.trekbikes.com/es/es/bikes/mountain/cross_country/superfly/"]
                                                photo:[UIImage imageNamed:@"trek.jpg"]];
        
        
        RPLModel *intense1=[[RPLModel alloc]initWithType:@"MTB"
                                            sizeWheel:@"29"
                                        materialFrame:@"Carbono"
                                                brand:@"Intense Carbine"
                                           components:@"XX1" info:@"sdhfjksdhfuhrsuhfiohsriohfiohrsiofghiorhiohioghiohguihpiushupithguihheroishguisohrgiohirosthgiohrtigoeriohgiortgiohewrioghioherguihweiueiruwhguierhgiouherioheriuwghuirw`hgiurtwhgiutrwhg8oiehgoierioghtiroeghjioerhtgiohweioghwerieiorw`ghioer"
                                              bikeWeb:[NSURL URLWithString:@"http://intensecycles.com/carbine-29/"]
                                                photo:[UIImage imageNamed:@"intense.jpg"]];
        
        
        
        
        
//        
//        RPLModel *bikeRoad1=[[RPLModel alloc]initwithRoad:nil
//                                                sizeWheel:nil
//                                            materialFrame:@"Carbono"
//                                                    brand:@"Look"
//                                               components:@"Sram Red"
//                                                     info:@"gdgfdhgfhdighidfhfdn´gsubkdgdskbgjskdbgjkdbgkjbd" bikeWeb:[NSURL URLWithString:@""]
//                                                    photo:[UIImage imageNamed:@""]];
//        RPLModel *bikeRoad2=[[RPLModel alloc]initwithRoad:nil
//                                                sizeWheel:nil
//                                            materialFrame:@"Carbono"
//                                                    brand:@"Cervelo"
//                                               components:@"Shimano Ultegra"
//                                                     info:@"gdgfdhgfhdighidfhfdn´gsubkdgdskbgjskdbgjkdbgkjbd" bikeWeb:[NSURL URLWithString:@""]
//                                                    photo:[UIImage imageNamed:@""]];
//        
//        RPLModel *bikeRoad3=[[RPLModel alloc]initwithRoad:nil
//                                                sizeWheel:nil
//                                            materialFrame:@"Carbono"
//                                                    brand:@"Trek"
//                                               components:@"Campagnolo"
//                                                     info:@"gdgfdhgfhdighidfhfdn´gsubkdgdskbgjskdbgjkdbgkjbd" bikeWeb:[NSURL URLWithString:@""]
//                                                    photo:[UIImage imageNamed:@""]];
        
        
        self.scott=@[scott1];
        self.specialized=@[specialized1];
        self.trek=@[trek1];
        self.intense=@[intense1];
        
        
        
    }
    
    return self;

}

#pragma mark - CountBikes

-(RPLModel*)sctottBikeAtIndex:(int)index{
    
    return [self.scott objectAtIndex:index];

}
-(RPLModel*)specializedBikeAtIndex:(int)index{
    
    return [self.specialized objectAtIndex:index];

}
-(RPLModel*)trekBikeAtIndex:(int)index{
    
    return [self.trek objectAtIndex:index];

}
-(RPLModel*)intenseBikeAtIndex:(int)index{

    return [self.intense objectAtIndex:index];
}

@end
