//
//  RPLBrandTableViewController.m
//  MTBProyect
//
//  Created by Raul Pedraza on 24/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import "RPLBrandTableViewController.h"
#import "RPLModel.h"
#import "RPLMtbViewController.h"
#import "RPLBrandModel.h"
#import "RPLBrandTableViewController.h"
#import "RPLBikeTableViewCell.h"

@interface RPLBrandTableViewController ()

@end

@implementation RPLBrandTableViewController



-(id)initWithModel:(RPLBrandModel*) model style:(UITableViewStyle)style{


    if (self=[super initWithStyle:style]) {
        _model=model;
    }

    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Registramos el nib de la celda
    UINib *nib = [UINib nibWithNibName:@"RPLBikeTableViewCell" bundle:[NSBundle mainBundle]];
    [self.tableView registerNib:nib forCellReuseIdentifier:[RPLBikeTableViewCell cellId]];
    //Altura de la tabla
    self.tableView.rowHeight=[RPLBikeTableViewCell height];
    
    }



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    
    
    if (section == SCOTT_BRAND_SECCION) {
        
        return [self.model scottBikeCount];
        
    }else if (section == SPECIALIZED_BRAND_SECCION) {
        
        return [self.model specializedBikeCount];
        
    }else if(section == TREK_BRAND_SECCION){
        
        return [self.model trekBikeCount];
    }
    else{
    
        return [self.model intenseBikeCount];
    }
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    
    RPLBikeTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:[RPLBikeTableViewCell cellId] forIndexPath:indexPath];
    
    

    RPLModel *model=nil;
    
    if (indexPath.section==SCOTT_BRAND_SECCION) {
        
        model=[self.model sctottBikeAtIndex:indexPath.row];
        cell.photoBike.image=[UIImage imageNamed:@"logoScott.jpg"];
        cell.brandBikeLabel.text=@"Scott";
        
    }else if (indexPath.section==SPECIALIZED_BRAND_SECCION){
        
        model=[self.model specializedBikeAtIndex:indexPath.row];
        cell.photoBike.image=[UIImage imageNamed:@"logoSpecialized.jpg"];
        cell.brandBikeLabel.text=@"Specialized";
        
    }else if(indexPath.section==TREK_BRAND_SECCION){
    
        model=[self.model trekBikeAtIndex:indexPath.row];
        cell.photoBike.image=[UIImage imageNamed:@"logoTrek.jpg"];
        cell.brandBikeLabel.text=@"Trek";
        
    }else{
    
        model=[self.model intenseBikeAtIndex:indexPath.row];
        cell.photoBike.image=[UIImage imageNamed:@"logoIntense.jpg"];
        cell.brandBikeLabel.text=@"Intense";
    
    }
    

    return cell;
}



#pragma mark - Delegate

-(void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
   
    
    //Suponemos que estamos en un navigationController
    //Averiguamos de que bici se trata

    RPLModel *model=nil;
    
    if (indexPath.section==SCOTT_BRAND_SECCION) {
        
        model=[self.model sctottBikeAtIndex:indexPath.row];
        
    }else if (indexPath.section==SPECIALIZED_BRAND_SECCION){
        
        model=[self.model specializedBikeAtIndex:indexPath.row];

    }else if (indexPath.section==TREK_BRAND_SECCION){
        
        model=[self.model trekBikeAtIndex:indexPath.row];

    }else{
    
        model=[self.model intenseBikeAtIndex:indexPath.row];
    }
    
    [self.delegate brandTableViewController:self
                              didSelectBike:model];
    
    
    //Avisamos se ha seleccionado un nuevo vino hemos avisado tanto al dekegado como al que esta escuchando nuestra notificacion
    NSNotification *notication=[NSNotification notificationWithName:NEW_NOTIFICATION_NAME
                                                             object:self
                                                           userInfo:@{BIKE_KEY:model}];
    //Enviamos la notificacion
    [[NSNotificationCenter defaultCenter]postNotification:notication];
    
}







@end
