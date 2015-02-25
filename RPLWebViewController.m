//
//  RPLWebViewController.m
//  MTBProyect
//
//  Created by Raul Pedraza on 23/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import "RPLWebViewController.h"
#import  "RPLModel.h"
#import "RPLBrandTableViewController.h"



@implementation RPLWebViewController



-(id)initWithModel:(RPLModel*)model{
   
    if (self=[super initWithNibName:nil
                             bundle:nil]) {
        
        
        _model=model;
    }

    return self;
}

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    [self displayURL:self.model.bikeWeb];
    
    //Alta de la notificacion
    //Necesitamos las constantes del table
    
    NSNotificationCenter *center=[NSNotificationCenter defaultCenter];
    [center addObserver:self
               selector:@selector(bikeDidChange:)
                   name:NEW_NOTIFICATION_NAME
                 object:nil];
    
    

}

-(void)bikeDidChange:(NSNotification*)notification{
    
    //Extraemos el diccioanrio que nos pasa la notificacion
    NSDictionary *dictionary=[notification userInfo];
    //Cremaos un modelo con la celda seleccionada
    RPLModel *model=[dictionary objectForKey:BIKE_KEY];
    
    //Actualizar modelo
    self.model=model;
    [self displayURL:self.model.bikeWeb];
    
}



-(void)viewWillDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    
    
  
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
}



#pragma mark - UIWebViewDelegate

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    
    [self.activityView stopAnimating ];
    self.activityView.hidden=YES;

}

-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    
    return YES;
}

-(void) webViewDidStartLoad:(UIWebView *)webView{
    NSLog(@"empezó");
}

-(void) webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    NSLog(@"La jodimos %@", error);
}




#pragma mark - Utils
-(void)displayURL:(NSURL*)url{
    

    //El delegado soy yo mismo
    self.browser.delegate=self;
    self.activityView.hidden=YES;
    [self.activityView startAnimating];
    
    [self.browser loadRequest:[NSURLRequest requestWithURL:url]];


}






@end
