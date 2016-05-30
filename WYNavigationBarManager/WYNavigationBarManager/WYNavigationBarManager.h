//
//  WYNavigationBarManager.h
//  WYNavigationBarManager
//
//  Created by 徐悟源 on 16/5/30.
//  Copyright © 2016年 徐悟源. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface WYNavigationBarManager : NSObject

@property (nonatomic , strong) UIColor *barColor;

@property (nonatomic , strong) UIColor *tintColor;

@property (nonatomic , strong) UIImage *backgroundImage;

@property (nonatomic , assign) UIStatusBarStyle statusBarStyle;

@property (nonatomic , assign) float zeroAlphaOffset;

@property (nonatomic , assign) float fullAlphaOffset;

@property (nonatomic , assign) float minAlphaValue;

@property (nonatomic , assign) float maxAlphaValue;

@property (nonatomic , strong) UIColor *fullAlphaTintColor;

@property (nonatomic , assign) UIStatusBarStyle fullAlphaBarStyle;

@property (nonatomic , assign) BOOL allChange;

@property (nonatomic , assign) BOOL reversal;

@property (nonatomic , assign) BOOL continues;

+ (void)setBarColor:(UIColor *)color;
+ (void)setTintColor:(UIColor *)color;
+ (void)setBackgroundImage:(UIImage *)image;
+ (void)setStatusBarStyle:(UIStatusBarStyle)style;

+ (void)setZeroAlphaOffset:(float)offset;
+ (void)setFullAlphaOffset:(float)offset;
+ (void)setMaxAlphaValue:(float)value;
+ (void)setMinAlphaValue:(float)value;

+ (void)setFullAlphaTintColor:(UIColor *)color;
+ (void)setFullAlphaBarStyle:(UIStatusBarStyle)style;

+ (void)setAllChange:(BOOL)allChange;
+ (void)setReversal:(BOOL)reversal;
+ (void)setContinues:(BOOL)continues;

+ (void)managerWithController:(UIViewController *)viewController;//you should use this method to init MXNavigationManager

+ (void)changeAlphaWithCurrentOffset:(CGFloat)currentOffset;// implemention this method in @selectot(scrollView: scrollViewDidScroll)

+ (void)saveWithController:(UIViewController *)viewController;//save now navigationBar status, use reStore to recover it

+ (void)reStoreWithZeroStatus;//recover status in zeroAlpha status

+ (void)reStoreWithFullStatus;//recover status in fullAlpha status

+ (void)reStore;// recover status which you had saved in @selector(saveWithController:)

@end
