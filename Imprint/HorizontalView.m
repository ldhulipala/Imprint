//
//  HorizontalView.m
//  Imprint
//
//  Created by Laxman Dhulipala on 6/13/13.
//  Copyright (c) 2013 Antonio Ono. All rights reserved.
//

#import "HorizontalView.h"

@implementation HorizontalView

- (id)init
{
    if(self = [super init]) {
        self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        self.sectionInset = UIEdgeInsetsMake(200.0f, 0.0f, 200.0f, 0.0f);
        self.minimumLineSpacing = 50.0f;
    }
    
    return self;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds
{
    return YES;
}

-(void)prepareLayout
{
    [super prepareLayout];
    // Do other initialization before layout starts here
    
    
    _cellCount = 2; // Dummy initializer
    
    CGSize size = self.collectionView.frame.size;
    _center = CGPointMake(size.width / 2.0, size.height / 2.0);
    _radius = MIN(size.width, size.height) / 2.5;

}


- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect {
    NSArray *attributes = [super layoutAttributesForElementsInRect:rect];
    NSMutableArray *newAttributes = [NSMutableArray arrayWithCapacity:attributes.count];
    for (UICollectionViewLayoutAttributes *attribute in attributes) {
        if ((attribute.frame.origin.x + attribute.frame.size.width <= self.collectionViewContentSize.width) &&
            (attribute.frame.origin.y + attribute.frame.size.height <= self.collectionViewContentSize.height)) {
            [newAttributes addObject:attribute];
        }
    }
    return newAttributes;
}

//-(CGSize)collectionViewContentSize
//{
//    return [self collectionView].frame.size;
//}





@end
