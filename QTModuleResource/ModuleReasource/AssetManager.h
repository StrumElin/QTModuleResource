//
//  AssetManager.h
//  QTModuleResource
//
//  Created by ☺strum☺ on 2018/11/28.
//  Copyright © 2018年 l. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AssetManager : NSObject

//+ (UIImage *)getImage:(NSString *)name;

+ (NSBundle *)bundleReasourceWithTarget:(Class)target;

@end

