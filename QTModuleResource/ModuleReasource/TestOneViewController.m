//
//  TestOneViewController.m
//  QTModuleResource
//
//  Created by ☺strum☺ on 2018/11/27.
//  Copyright © 2018年 l. All rights reserved.
//

#import "TestOneViewController.h"

@interface TestOneViewController ()

@end

@implementation TestOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSBundle *podBundle = [NSBundle bundleForClass:self.class];
//    id podData = [podBundle URLForResource:@"QTModuleResourceBundle" withExtension:@"bundle"];
//    NSBundle *bundle = [NSBundle bundleWithURL:podData];
//
    NSBundle *bundle = [NSBundle mainBundle];
    
     NSString * key = [[NSJSONSerialization JSONObjectWithData:[[NSData alloc] initWithContentsOfFile:[bundle pathForResource:@"users_config" ofType:@"json"]] options:NSJSONReadingMutableContainers error:nil] valueForKey:@"appkey"];
    
    NSLog(@"key -------- %@",key);
    // Do any additional setup after loading the view from its nib.
}


- (IBAction)pushTWO:(id)sender {

    
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
