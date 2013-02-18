//
//  JobGuideViewController.m
//  ZLEmploy
//
//  Created by Ibokan on 13-2-18.
//  Copyright (c) 2013年 alex. All rights reserved.
//

#import "JobGuideViewController.h"
#import "JobGuideView.h"

@interface JobGuideViewController ()

@end

@implementation JobGuideViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden = YES;
    UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 20, 320, 44)];
    imgView.image = [UIImage imageNamed:@"navigationbar_bg.png"];
    [self.navigationController.view addSubview:imgView];
    
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(110, 0, 100, 44)];
    label.text = @"求职指导";
    label.backgroundColor = [UIColor clearColor];
    [imgView addSubview:label];
    [label release];
    [imgView release];
    
    
    
    
    
    
    
    
    
}
-(void)viewWillDisappear:(BOOL)animated
{
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	
    


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
