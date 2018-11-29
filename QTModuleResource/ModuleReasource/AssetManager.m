//
//  AssetManager.m
//  QTModuleResource
//
//  Created by ☺strum☺ on 2018/11/28.
//  Copyright © 2018年 l. All rights reserved.
//

#import "AssetManager.h"

@implementation AssetManager

//    'StrumBundles' => ['QTModuleResource/ModuleReasource/**/*.{xib,nib,storyboard,png,jpg}']

+ (UIImage *)getImage:(NSString *)name {

    UITraitCollection *traitCollection = [UITraitCollection traitCollectionWithDisplayScale:3];
    
    NSBundle *bundle = [self bundleReasource];
    
    UIImage *image = [UIImage imageNamed:name inBundle:bundle compatibleWithTraitCollection:traitCollection];
    
    return image;
    
}

+ (NSBundle *)bundleReasource{
    
    NSBundle *bundle = [NSBundle bundleForClass:[AssetManager class]];
    
    NSString *bundlePath = [[bundle resourcePath] stringByAppendingString:@"/StrumBundles.bundle"];
    
    bundle = [NSBundle bundleWithPath:bundlePath];
    
    if(!bundle){
        bundle = [NSBundle mainBundle];
    }
        
    return bundle;
}




@end
