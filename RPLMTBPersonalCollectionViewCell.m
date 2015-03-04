//
//  RPLMTBPersonalCollectionViewCell.m
//  MTBProyect
//
//  Created by Raul Pedraza on 2/3/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import "RPLMTBPersonalCollectionViewCell.h"

@implementation RPLMTBPersonalCollectionViewCell


- (id)initWithFrame:(CGRect)frame
{
    
    if (self = [super initWithFrame:frame]) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
        self.layer.shadowColor = [UIColor blackColor].CGColor;
        self.layer.shadowRadius = 5.0f;
        self.layer.shadowOffset = CGSizeMake(2.0f, 2.0f);
        self.layer.shadowOpacity = 0.5f;
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}


+ (CGFloat)height{
    return 200.0;

}
+ (CGFloat)width{
    return 200.0;
    
}
+ (NSString *)cellId{

    return [self description];
}
@end
