//
//  ImprintViewController.m
//  Imprint
//
//  Created by Antonio Ono on 6/13/13.
//  Copyright (c) 2013 Antonio Ono. All rights reserved.
//

#import "ImprintViewController.h"
#import "HabitCell.h"

@implementation ImprintViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.habitCount = 4;
    [self.collectionView registerClass:[HabitCell class] forCellWithReuseIdentifier:@"GENERIC_ID"];
    [self.collectionView reloadData];
    self.collectionView.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];
	// Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section;
{
    return self.habitCount;
}

-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath;
{
    HabitCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"GENERIC_ID" forIndexPath:indexPath];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger array[[indexPath length]];
    
    if ([indexPath indexAtPosition:0] == 0) {
        return CGSizeMake(100.0f, 100.0f);
    }
    else if ([indexPath indexAtPosition:0] == 1) {
        return CGSizeMake(150.0f, 150.0f);
    }
    else {
        return CGSizeMake(50.0f, 50.0f);
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
