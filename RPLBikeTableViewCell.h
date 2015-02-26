//
//  RPLBikeTableViewCell.h
//  MTBProyect
//
//  Created by Raul Pedraza on 25/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RPLBikeTableViewCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UIImageView *photoBike;
@property (weak, nonatomic) IBOutlet UILabel *brandBikeLabel;



+ (CGFloat)height;
+ (NSString *)cellId;
@end
