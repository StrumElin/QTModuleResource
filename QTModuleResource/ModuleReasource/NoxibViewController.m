//
//  NoxibViewController.m
//  QTModuleResource
//
//  Created by ☺strum☺ on 2018/11/29.
//  Copyright © 2018年 l. All rights reserved.
//

#import "NoxibViewController.h"
#import "TestOneViewController.h"
#import "AssetManager.h"
@interface NoxibViewController ()

@end

@implementation NoxibViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *v = [[UIView alloc] initWithFrame:CGRectMake(100, 60, 100, 70)];
    v.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:v];
    
    UIButton *b = [UIButton buttonWithType:UIButtonTypeSystem];
    b.frame = CGRectMake(100, 250, 100, 100);
    [b setTitle:@"push" forState:UIControlStateNormal];
    [b addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:b];
    
    
    
    // Do any additional setup after loading the view.
}

- (void)push{
    
    NSBundle *bundle = [AssetManager bundleReasourceWithTarget:self];
    
    TestOneViewController *tv = [[TestOneViewController alloc] initWithNibName:@"TestOneViewController" bundle:bundle];
    [self.navigationController pushViewController:tv animated:YES];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
