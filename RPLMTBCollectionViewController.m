//
//  RPLMTBCollectionViewController.m
//  MTBProyect
//
//  Created by Raul Pedraza on 2/3/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import "RPLMTBCollectionViewController.h"
#import "RPLMTBPersonalCollectionViewCell.h"

@interface RPLMTBCollectionViewController ()

@end

@implementation RPLMTBCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.collectionView registerNib:[UINib nibWithNibName:@"RPLMTBPersonalCollectionViewCell"
                                                    bundle:nil]forCellWithReuseIdentifier:@"cell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


#pragma mark - UICollectionViewDelegate
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                 cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
    RPLMTBPersonalCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:[RPLMTBPersonalCollectionViewCell cellId]
                                                                                     forIndexPath:indexPath];
    

    return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView
    numberOfItemsInSection:(NSInteger)section{

    return 30;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{


    RPLMTBPersonalCollectionViewCell *cell = (RPLMTBPersonalCollectionViewCell*)[collectionView cellForItemAtIndexPath:indexPath];
    NSArray *views = [cell.contentView subviews];
    UILabel *label = [views objectAtIndex:0];
    NSLog(@"Select %@",label.text);
}

@end
