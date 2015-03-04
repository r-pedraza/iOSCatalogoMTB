//
//  AppDelegate.m
//  MTBProyect
//
//  Created by Raul Pedraza on 23/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import "AppDelegate.h"
#import "RPLModel.h"
#import "RPLMtbViewController.h"
#import "RPLWebViewController.h"
#import "RPLBrandModel.h"
#import "RPLBrandTableViewController.h"
#import "RPLMTBCollectionViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (UIViewController *)rootViewControllerForPhoneWithModel:(RPLBrandModel *)model
{
    //Creamos el controlador
    RPLBrandTableViewController *brandTable= [[RPLBrandTableViewController alloc]initWithModel:model
                                                                                        style:UITableViewStylePlain];
    //Creamos el combinador
    UINavigationController *brandNavigation=[[UINavigationController alloc]initWithRootViewController:brandTable];
    
    // Delegados
    brandTable.delegate=brandTable;
    
    return brandNavigation;
}

- (UIViewController *)rootViewControllerForPadWithModel:(RPLBrandModel *)model
{
    // Controladores
    //Brand
    RPLBrandTableViewController *brandVC = [[RPLBrandTableViewController alloc] initWithModel:model
                                                                                      style:UITableViewStylePlain];
    //Bike
    RPLMtbViewController *bikeView=[[RPLMtbViewController alloc]initWithModel:[model sctottBikeAtIndex:0]];
    // Combinadores
    UINavigationController *brandNavigation=[[UINavigationController alloc]initWithRootViewController:brandVC];
    UINavigationController *bikeNavigation=[[UINavigationController alloc]initWithRootViewController:bikeView];
    
    UISplitViewController *split=[[UISplitViewController alloc]init];
    split.viewControllers=@[brandNavigation,bikeNavigation];
    
    
    // Delegados
    split.delegate=bikeView;
    brandVC.delegate=bikeView;
    
    return split;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
   
    //Creamos modelo
    RPLBrandModel *model=[[RPLBrandModel alloc]init];
    
    UIViewController *rootVC=nil;
    
    if(UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPad){
        
        rootVC=[self rootViewControllerForPadWithModel:model];
        
    
    }else{
        
        rootVC=[self rootViewControllerForPhoneWithModel:model];
    }
   
    
    
    //Color para la navigation
    [[UINavigationBar appearance]setBarTintColor:[UIColor colorWithRed:239.0/255
                                                                 green:239.0/255
                                                                  blue:244.0/255
                                                                   alpha:1]];
                                                  
    //Color para el título del Navigation
    [[UINavigationBar appearance]setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:0.0/255 green:92.0/255 blue:255.0/255 alpha:1]}];
    
    
    
    [[UITableView appearance]setBackgroundColor:[UIColor colorWithRed:239.0/255
                                                               green:239.0/255
                                                                blue:244.0/255
                                                                alpha:1]];
    
    

    //Lo asignamos al controlador raiz.
    self.window.rootViewController=rootVC;
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
