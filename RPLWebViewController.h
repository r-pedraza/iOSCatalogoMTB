//
//  RPLWebViewController.h
//  MTBProyect
//
//  Created by Raul Pedraza on 23/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RPLModel;

//El delegado de este controlador es un <UIWebViewDelegate>
@interface RPLWebViewController : UIViewController <UIWebViewDelegate>


@property(strong,nonatomic)RPLModel *model;

@property (weak, nonatomic) IBOutlet UIWebView *browser;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityView;

-(id)initWithModel:(RPLModel*)model;

@end
