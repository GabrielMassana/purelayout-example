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

@end
