//
//  RPLMTBCollectionViewController.h
//  MTBProyect
//
//  Created by Raul Pedraza on 2/3/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RPLMTBCollectionViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>


@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end
