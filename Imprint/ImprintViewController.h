//
//  ImprintViewController.h
//  Imprint
//
//  Created by Antonio Ono on 6/13/13.
//  Copyright (c) 2013 Antonio Ono. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImprintViewController : UICollectionViewController<UICollectionViewDataSource,
                                                              UICollectionViewDelegateFlowLayout>

@property (nonatomic, assign) NSInteger habitCount;

@end
