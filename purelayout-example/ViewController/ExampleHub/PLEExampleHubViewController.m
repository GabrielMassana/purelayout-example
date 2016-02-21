//
//  ViewController.m
//  purelayout-example
//
//  Created by GabrielMassana on 19/02/2016.
//  Copyright © 2016 GabrielMassana. All rights reserved.
//

#import "PLEExampleHubViewController.h"

#import "PureLayout.h"

@interface PLEExampleHubViewController ()

@property (nonatomic, strong) UIButton *tableViewButton;

@end

@implementation PLEExampleHubViewController

#pragma mark - ViewLifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.tableViewButton];

    [self updateViewConstraints];
}

#pragma mark - Subviews

- (UIButton *)tableViewButton
{
    if (!_tableViewButton)
    {
        _tableViewButton = [UIButton newAutoLayoutView];
        _tableViewButton.backgroundColor = [UIColor orangeColor];
        
        [_tableViewButton setTitle:@"Open Table View"
                          forState:UIControlStateNormal];
        
        [_tableViewButton setTitleColor:[UIColor blackColor]
                               forState:UIControlStateNormal];
    }
    
    return _tableViewButton;
}

#pragma mark - Constraints

- (void)updateViewConstraints
{
    [super updateViewConstraints];
    
    /*-------------------*/
    
    [self.tableViewButton autoPinEdgeToSuperviewEdge:ALEdgeLeft];
    
    [self.tableViewButton autoPinEdgeToSuperviewEdge:ALEdgeRight];
    
    [self.tableViewButton autoPinEdgeToSuperviewEdge:ALEdgeTop
                                           withInset:64.0f];

    [self.tableViewButton autoSetDimension:ALDimensionHeight
                                    toSize:80.0f];
}

@end
