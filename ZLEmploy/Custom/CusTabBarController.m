//
//  CusTabBarController.h
//  ZLEmploy
//
//  Created by Ibokan on 13-2-18.
//  Copyright (c) 2013年 alex. All rights reserved.
//
#import "CusTabBarController.h"

@interface CusTabBarController ()

@end

@implementation CusTabBarController

-(void)viewDidLoad
{
    self.tabBar.hidden = YES;
    //背景图片
    NSString *path = [[NSBundle mainBundle]pathForResource:@"bottombar" ofType:@"png"];
    UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 480-49, 320, 49)];
    imgView.image = [UIImage imageWithContentsOfFile:path];
    imgView.userInteractionEnabled = YES;
    [self.view addSubview:imgView];
    [imgView release];
    
    //主页bar
    
    NSString *pathOne = [[NSBundle mainBundle]pathForResource:@"searchjob" ofType:@"png"];
    NSString *pathOne_ = [[NSBundle mainBundle]pathForResource:@"searchjob_s" ofType:@"png"];
    UIButton *indexBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    indexBtn.frame = CGRectMake(0, 480-49, 320/5, 49);
    indexBtn.tag = 1000;
    [indexBtn setImage:[UIImage imageWithContentsOfFile:pathOne] forState:UIControlStateNormal];
    [indexBtn setImage:[UIImage imageWithContentsOfFile:pathOne_] forState:UIControlStateSelected];
    [indexBtn addTarget:self action:@selector(changePage:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:indexBtn];
    
    
    
    //messagebar
    NSString *pathTwo = [[NSBundle mainBundle]pathForResource:@"myzl" ofType:@"png"];
    NSString *pathTwo_ = [[NSBundle mainBundle]pathForResource:@"myzl_s" ofType:@"png"];
    UIButton *messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    messageBtn.frame = CGRectMake(320/5, 480-49, 320/5, 49);
    messageBtn.tag = 1001;
    [messageBtn setImage:[UIImage imageWithContentsOfFile:pathTwo] forState:UIControlStateNormal];
    [messageBtn setImage:[UIImage imageWithContentsOfFile:pathTwo_] forState:UIControlStateSelected];
    [messageBtn addTarget:self action:@selector(changePage:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:messageBtn];
    
    
    //friendbar
    NSString *pathThree = [[NSBundle mainBundle]pathForResource:@"realtime" ofType:@"png"];
    NSString *pathThree_ = [[NSBundle mainBundle]pathForResource:@"realtime_s" ofType:@"png"];
    UIButton *friendBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    friendBtn.frame = CGRectMake(320*2/5, 480-49, 320/5, 49);
    friendBtn.tag = 1002;
    [friendBtn setImage:[UIImage imageWithContentsOfFile:pathThree] forState:UIControlStateNormal];
    [friendBtn setImage:[UIImage imageWithContentsOfFile:pathThree_] forState:UIControlStateSelected];
    [friendBtn addTarget:self action:@selector(changePage:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:friendBtn];
    
    //squrebar
    
    NSString *pathFour = [[NSBundle mainBundle]pathForResource:@"searchsalary" ofType:@"png"];
    NSString *pathFour_ = [[NSBundle mainBundle]pathForResource:@"searchsalary_s" ofType:@"png"];
    UIButton *squareBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    squareBtn.frame = CGRectMake(320*3/5, 480-49, 320/5, 49);
    squareBtn.tag = 1003;
    [squareBtn setImage:[UIImage imageWithContentsOfFile:pathFour] forState:UIControlStateNormal];
    [squareBtn setImage:[UIImage imageWithContentsOfFile:pathFour_] forState:UIControlStateSelected];
    [squareBtn addTarget:self action:@selector(changePage:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:squareBtn];
    
    //morebar
    
    NSString *pathFive = [[NSBundle mainBundle]pathForResource:@"jobguide" ofType:@"png"];
    NSString *pathFive_ = [[NSBundle mainBundle]pathForResource:@"jobguide_s" ofType:@"png"];
    UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    moreBtn.frame = CGRectMake(320*4/5, 480-49, 320/5, 49);
    moreBtn.tag = 1004;
    [moreBtn setImage:[UIImage imageWithContentsOfFile:pathFive] forState:UIControlStateNormal];
    [moreBtn setImage:[UIImage imageWithContentsOfFile:pathFive_] forState:UIControlStateSelected];
    [moreBtn addTarget:self action:@selector(changePage:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:moreBtn];
  
    
    
    _targerBtn = indexBtn;
    _targerBtn.selected = YES;
    self.selectedIndex = 0;
    
    
}

-(void)changePage:(UIButton *)sender
{
    
    int a = sender.tag%10;
    
    self.selectedIndex = a;
    _targerBtn.selected = NO;
    _targerBtn = sender;
    _targerBtn.selected = YES;
    
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
