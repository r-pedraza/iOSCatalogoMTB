//
//  RPLMtbViewController.m
//  MTBProyect
//
//  Created by Raul Pedraza on 23/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import "RPLMtbViewController.h"
#import "RPLModel.h"
#import "RPLWebViewController.h"
#import "RPLBrandTableViewController.h"

@interface RPLMtbViewController ()

@end

@implementation RPLMtbViewController


-(id)initWithModel:(RPLModel*) model{
    
    NSString *nibName=nil;
    
    if (IS_IPHONE) {
        nibName=@"RPLMtbViewControllerForiPhone";
    }
    
    
    //Busca algun xib que se llame como el controlar y este en el bundle principal.
    if (self=[super initWithNibName:nibName bundle:nil]) {
        
        //el modelo se lo pasamos de manera explicita mediante un parámetro.
        _model=model;
        
        //El título de esta ventana será la marca de la bici que se esté cargando.
        self.title=self.model.brand;
    
    }
    return self;

}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    if([[[UIDevice currentDevice] systemVersion] floatValue]>=7)
    { self.edgesForExtendedLayout =UIRectEdgeNone;
    }
    [self syncModelWithView];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

-(IBAction)displayWeb:(id)sender{
    
    //Creamos el controlador
    RPLWebViewController *web=[[RPLWebViewController alloc]initWithModel:self.model];
    
    //Lo pusheamos
    [self.navigationController pushViewController:web animated:YES];
}

#pragma mark - Utils

-(void)syncModelWithView{
    
    self.photoLabel.image=self.model.photo;
    self.typeLabel.text=self.model.type;
    self.brandLabel.text=self.model.brand;
    self.sizeWheelLabel.text=self.model.sizeWheel;
    self.materialFrameLabel.text=self.model.materialFrame;
    self.componentsLabel.text=self.model.components;
    self.infoLabel.text=self.model.info;
    
    //Numero de lineas del texto.
    [self.infoLabel setNumberOfLines:0];
    
    //Ajustamos los label a su tamaño o reducimos la fuenste en su caso ya que en el iphone puede ocurrir que no quepa todo el texto
    self.typeLabel.adjustsFontSizeToFitWidth=YES;
    self.brandLabel.adjustsFontSizeToFitWidth=YES;
    self.sizeWheelLabel.adjustsFontSizeToFitWidth=YES;
    self.materialFrameLabel.adjustsFontSizeToFitWidth=YES;
    self.componentsLabel.adjustsFontSizeToFitWidth=YES;
    self.infoLabel.adjustsFontSizeToFitWidth=YES;
   

}

# pragma mark - UISplitViewControllerDelegate

-(void)splitViewController:(UISplitViewController *)svc
    willHideViewController:(UIViewController *)aViewController
         withBarButtonItem:(UIBarButtonItem *)barButtonItem
      forPopoverController:(UIPopoverController *)pc{

    self.navigationItem.rightBarButtonItem=barButtonItem;

}

-(void)splitViewController:(UISplitViewController *)svc
    willShowViewController:(UIViewController *)aViewController
 invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem{

    self.navigationItem.rightBarButtonItem=nil;
}


#pragma mark - bikeTableViewControllerDelegate

-(void)brandTableViewController:(RPLBrandTableViewController*) bikeVC didSelectBike:(RPLModel*)bike{
    
    //Este modelo se igualará al que entre por parametro.
     self.model=bike;
     self.title=bike.brand;
    
    //Sincronizamos modelo con la view.
    [self syncModelWithView];

}


@end
