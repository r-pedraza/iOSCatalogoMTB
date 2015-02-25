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
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    if (section==SCOTT_BRAND_SECCION) {
        
        return [self.model scottBikeCount];
        
    }else if (section==SPECIALIZED_BRAND_SECCION) {
        
        return [self.model specializedBikeCount];
        
    }else {
        
        return [self.model trekBikeCount];
    }
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *cellId=@"Cell";
    
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellId];
    
    
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault
                                   reuseIdentifier:cellId];
    }
    //Averiar modelo bici
    RPLModel *model=nil;
    
    if (indexPath.section==SCOTT_BRAND_SECCION) {
        model=[self.model sctottBikeAtIndex:indexPath.row];
    }else if (indexPath.section==SPECIALIZED_BRAND_SECCION){
        model=[self.model specializedBikeAtIndex:indexPath.row];
    }else{
    
        model=[self.model trekBikeAtIndex:indexPath.row];
    }
    
    
    //Sincronizar celda y modelo
    cell.imageView.image=model.photo;
    cell.textLabel.text=model.brand;
    
    
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

    }else{
        model=[self.model trekBikeAtIndex:indexPath.row];

    }
    
    [self.delegate brandTableViewController:self
                              didSelectBike:model];
    
    
    //Avisamos se ha seleccionado un nuevo vino hemos avisado tanto al dekegado como al que esta escuchando nuestra notificacion
    NSNotification *notication=[NSNotification notificationWithName:NEW_NOTIFICATION_NAME
                                                             object:self
                                                           userInfo:@{BIKE_KEY:model}];
    //Enviamos la notificacion
    [[NSNotificationCenter defaultCenter]postNotification:notication];
    
    //nos damos de alta y de baja en el MtbView
}


- (NSString *)tableView:(UITableView *)tableView
titleForHeaderInSection:(NSInteger)section {
   
    NSString *sectionName;
    
    switch (section) {
            
        case SCOTT_BRAND_SECCION: sectionName = @"Scott";
            break;
        case SPECIALIZED_BRAND_SECCION: sectionName = @"Specialized";
            break;
        case TREK_BRAND_SECCION: sectionName= @"Trek";
        
            break;
    }
    
    return sectionName;

}





@end
