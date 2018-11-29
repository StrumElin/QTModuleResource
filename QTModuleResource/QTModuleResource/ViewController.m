//
//  ViewController.m
//  QTModuleResource
//
//  Created by ☺strum☺ on 2018/11/27.
//  Copyright © 2018年 l. All rights reserved.
//

#import "ViewController.h"
#import "TestOneViewController.h"
#import "AssetManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)pushOne:(id)sender {
    
//     NSBundle *bundle = [AssetManager bundleReasource];
    
    TestOneViewController *tv = [[TestOneViewController alloc] initWithNibName:@"TestOneViewController" bundle:[NSBundle mainBundle]];
//
    [self.navigationController pushViewController:tv animated:YES];
}

@end
