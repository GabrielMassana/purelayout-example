//
//  PLEViewWithObjects.m
//  purelayout-example
//
//  Created by GabrielMassana on 03/03/2016.
//  Copyright © 2016 GabrielMassana. All rights reserved.
//

#import "PLEViewWithObjects.h"

#import "PureLayout.h"

@interface PLEViewWithObjects ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIImageView *footerImageView;

@end

@implementation PLEViewWithObjects

#pragma mark - Init

- (instancetype)init;
{
    self = [super init];
    
    if (self)
    {
        [self addSubview:self.titleLabel];
        [self addSubview:self.footerImageView];
        
        self.backgroundColor = [UIColor lightGrayColor];
    }
    
    return self;
}

#pragma mark - Subviews

- (UILabel *)titleLabel
{
    if (!_titleLabel)
    {
        _titleLabel = [UILabel newAutoLayoutView];
        
        _titleLabel.text = @"Title Label";
        _titleLabel.font = [UIFont systemFontOfSize:25.0f];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.backgroundColor = [UIColor whiteColor];
    }
    
    return _titleLabel;
}

- (UIImageView *)footerImageView
{
    if (!_footerImageView)
    {
        _footerImageView = [UIImageView newAutoLayoutView];
        
        _footerImageView.image = [UIImage imageNamed:@"footerImage"];
    }
    
    return _footerImageView;
}

#pragma mark - Constraints

- (void)updateConstraints
{
    [self.titleLabel autoPinEdgeToSuperviewEdge:ALEdgeLeft
                                      withInset:70.0f];
    
    [self.titleLabel autoPinEdgeToSuperviewEdge:ALEdgeRight
                                      withInset:70.0f];
    
    [self.titleLabel autoPinEdgeToSuperviewEdge:ALEdgeTop
                                      withInset:50.0f];
    
    /*-------------------*/

    [self.footerImageView autoPinEdge:ALEdgeTop
                               toEdge:ALEdgeBottom
                               ofView:self.titleLabel
                           withOffset:30.0f];
    
    [self.footerImageView autoPinEdgeToSuperviewEdge:ALEdgeLeft];
    
    [self.footerImageView autoPinEdgeToSuperviewEdge:ALEdgeRight];
    
    [self.footerImageView autoSetDimension:ALDimensionHeight
                                    toSize:94.0f];
    
    /*-------------------*/
    
    [super updateConstraints];
}

@end
