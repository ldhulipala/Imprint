//
//  HabitCell.m
//  Imprint
//
//  Created by Laxman Dhulipala on 6/13/13.
//  Copyright (c) 2013 Antonio Ono. All rights reserved.
//

#import "HabitCell.h"

@implementation HabitCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) { 
        // Initialization code
        self.contentView.layer.borderWidth = 1.0f;
        self.contentView.layer.borderColor = [UIColor blackColor].CGColor;
        self.contentView.backgroundColor = [UIColor underPageBackgroundColor];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
