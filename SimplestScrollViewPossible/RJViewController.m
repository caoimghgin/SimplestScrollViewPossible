//
//  RJViewController.m
//  SimplestScrollView
//
//  Created by Kevin Muldoon on 10/11/14.
//  Copyright (c) 2014 Robot Jackalope. All rights reserved.
//

#import "RJViewController.h"
#import "PureLayout.h"

@interface RJViewController()

@property (strong, nonatomic) UIScrollView *scrollView;
@property (strong, nonatomic) UIView *contentView;

@property (strong, nonatomic) UIView *redView;
@property (strong, nonatomic) UIView *greenView;
@property (strong, nonatomic) UIView *blueView;
@property (strong, nonatomic) UIView *cyanView;
@property (strong, nonatomic) UIView *magentaView;
@property (strong, nonatomic) UIView *yellowView;
@property (strong, nonatomic) UIView *blackView;

@end

@implementation RJViewController

- (id)init {
    self = [super init];
    if (self) {
        
        self.title = @"Simplest Scroll View Possible";
        
        self.scrollView = [UIScrollView newAutoLayoutView];
        [self.scrollView setUserInteractionEnabled:YES];
        
        self.contentView = [UIView newAutoLayoutView];
        [self.contentView setBackgroundColor:[UIColor clearColor]];
        
        self.redView = [UIView newAutoLayoutView];
        [self.redView setBackgroundColor:[UIColor redColor]];
        
        self.greenView = [UIView newAutoLayoutView];
        [self.greenView setBackgroundColor:[UIColor greenColor]];
        
        self.blueView = [UIView newAutoLayoutView];
        [self.blueView setBackgroundColor:[UIColor blueColor]];
        
        self.cyanView = [UIView newAutoLayoutView];
        [self.cyanView setBackgroundColor:[UIColor cyanColor]];
        
        self.magentaView = [UIView newAutoLayoutView];
        [self.magentaView setBackgroundColor:[UIColor magentaColor]];
        
        self.yellowView = [UIView newAutoLayoutView];
        [self.yellowView setBackgroundColor:[UIColor yellowColor]];
        
        self.blackView = [UIView newAutoLayoutView];
        [self.blackView setBackgroundColor:[UIColor blackColor]];
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    [self.scrollView addSubview:self.contentView];
    [self.view addSubview:self.scrollView];
    
    [self.contentView addSubview:self.redView];
    [self.contentView addSubview:self.greenView];
    [self.contentView addSubview:self.blueView];
    [self.contentView addSubview:self.cyanView];
    [self.contentView addSubview:self.magentaView];
    [self.contentView addSubview:self.yellowView];
    [self.contentView addSubview:self.blackView];
    
    [self updateViewConstraints];
}

- (void)updateViewConstraints
{
    float height = 320.0f;
    
    [self.scrollView autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsZero];
    [self.contentView autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsZero];
    [self.contentView autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeading ofView:self.view];
    [self.contentView autoPinEdge:ALEdgeRight toEdge:ALEdgeTrailing ofView:self.view];

    [self.redView autoSetDimension:ALDimensionHeight toSize:height];
    [self.redView autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeading ofView:self.contentView];
    [self.redView autoPinEdge:ALEdgeRight toEdge:ALEdgeTrailing ofView:self.contentView];
    [self.redView autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:self.contentView]; // Pin to top of contentView
    
    [self.greenView autoSetDimension:ALDimensionHeight toSize:height];
    [self.greenView autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeading ofView:self.contentView];
    [self.greenView autoPinEdge:ALEdgeRight toEdge:ALEdgeTrailing ofView:self.contentView];
    [self.greenView autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.redView]; // Pin top to bottom of previous view (redView).
    
    [self.blueView autoSetDimension:ALDimensionHeight toSize:height];
    [self.blueView autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeading ofView:self.contentView];
    [self.blueView autoPinEdge:ALEdgeRight toEdge:ALEdgeTrailing ofView:self.contentView];
    [self.blueView autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.greenView]; // Pin top to bottom of previous view (greenView).
    
    [self.cyanView autoSetDimension:ALDimensionHeight toSize:height];
    [self.cyanView autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeading ofView:self.contentView];
    [self.cyanView autoPinEdge:ALEdgeRight toEdge:ALEdgeTrailing ofView:self.contentView];
    [self.cyanView autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.blueView]; // Pin top to bottom of previous view (blueView).

    [self.magentaView autoSetDimension:ALDimensionHeight toSize:height];
    [self.magentaView autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeading ofView:self.contentView];
    [self.magentaView autoPinEdge:ALEdgeRight toEdge:ALEdgeTrailing ofView:self.contentView];
    [self.magentaView autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.cyanView]; // Pin top to bottom of previous view (cyanView).
    
    [self.yellowView autoSetDimension:ALDimensionHeight toSize:height];
    [self.yellowView autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeading ofView:self.contentView];
    [self.yellowView autoPinEdge:ALEdgeRight toEdge:ALEdgeTrailing ofView:self.contentView];
    [self.yellowView autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.magentaView]; // Pin top to bottom of previous view (magentaView).
    
    [self.blackView autoSetDimension:ALDimensionHeight toSize:height];
    [self.blackView autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeading ofView:self.contentView];
    [self.blackView autoPinEdge:ALEdgeRight toEdge:ALEdgeTrailing ofView:self.contentView];
    [self.blackView autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.yellowView]; // Pin top to bottom of previous view (yellowView).
    [self.blackView autoPinEdge:ALEdgeBottom toEdge:ALEdgeBottom ofView:self.contentView]; // Pin bottom to bottom of contentView
    
    [super updateViewConstraints];
}

@end
