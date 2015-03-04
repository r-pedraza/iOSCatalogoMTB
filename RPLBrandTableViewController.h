//
//  RPLBrandTableViewController.h
//  MTBProyect
//
//  Created by Raul Pedraza on 24/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RPLBrandModel;
@class RPLBrandTableViewController;
@class RPLModel;
@class RPLBrandTableViewController;


#define SCOTT_BRAND_SECCION 0
#define SPECIALIZED_BRAND_SECCION 1
#define TREK_BRAND_SECCION 2
#define NEW_NOTIFICATION_NAME @"newBike"
#define BIKE_KEY @"bike"


@protocol BrandTableViewControllerDelegate <NSObject>

-(void)brandTableViewController:(RPLBrandTableViewController*) bikeVC didSelectBike:(RPLModel*)bike;

@end

@interface RPLBrandTableViewController : UITableViewController<BrandTableViewControllerDelegate>

@property(strong,nonatomic) RPLBrandModel *model;
@property(weak,nonatomic) id <BrandTableViewControllerDelegate> delegate;

-(id)initWithModel:(RPLBrandModel*) model style:(UITableViewStyle)style;


@end

