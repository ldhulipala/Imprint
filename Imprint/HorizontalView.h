//
//  HorizontalView.h
//  Imprint
//
//  Created by Laxman Dhulipala on 6/13/13.
//  Copyright (c) 2013 Antonio Ono. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HorizontalView : UICollectionViewFlowLayout

@property (nonatomic, assign) NSInteger cellCount;
@property (nonatomic, assign) CGPoint center;
@property (nonatomic, assign) CGFloat radius;

@end
