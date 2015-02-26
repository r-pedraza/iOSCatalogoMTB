//
//  RPLBikeTableViewCell.m
//  MTBProyect
//
//  Created by Raul Pedraza on 25/2/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import "RPLBikeTableViewCell.h"

@implementation RPLBikeTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


+ (CGFloat)height {
    return 200.0;
}

+ (NSString *)cellId {
    return [self description];
}
@end
