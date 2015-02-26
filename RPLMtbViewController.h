//
//  RPLMtbViewController.h
//  MTBProyect
//
//  Created by Raul Pedraza on 23/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import <UIKit/UIKit.h>
@class  RPLModel;
#import "RPLBrandTableViewController.h"

@interface RPLMtbViewController : UIViewController  <UISplitViewControllerDelegate, BrandTableViewControllerDelegate>

@property(strong,nonatomic)RPLModel *model;
@property (weak, nonatomic) IBOutlet UIImageView *photoLabel;
@property (weak, nonatomic) IBOutlet UILabel *typeLabel;
@property (weak, nonatomic) IBOutlet UILabel *brandLabel;
@property (weak, nonatomic) IBOutlet UILabel *sizeWheelLabel;
@property (weak, nonatomic) IBOutlet UILabel *materialFrameLabel;
@property (weak, nonatomic) IBOutlet UILabel *componentsLabel;
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;

- (IBAction)displayWeb:(id)sender;

-(id)initWithModel:(RPLModel*) model;


@end
