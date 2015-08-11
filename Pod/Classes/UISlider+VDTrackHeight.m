//
//  UISlider+VDTrackHeight.m
//  UISlider-TrackHeight
//
//  Created by vilyever on 15/8/11.
//  Copyright (c) 2015年 vilyever. All rights reserved.
//

#import "UISlider+VDTrackHeight.h"

#import <objc/runtime.h>


@implementation UISlider (VDTrackHeight)

#pragma mark Accessors
#pragma mark Private Accessors

#pragma mark Public Accessors
- (CGFloat)vd_trackHeight
{
    return [objc_getAssociatedObject(self, @selector(vd_trackHeight)) floatValue];
}

- (void)setVd_trackHeight:(CGFloat)vd_trackHeight
{
    objc_setAssociatedObject(self, @selector(vd_trackHeight), @(vd_trackHeight), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self setNeedsDisplay];
}


#pragma mark Methods
#pragma mark Private Class Method

#pragma mark Private Instance Method
- (CGRect)vd_trackRectForBounds:(CGRect)bounds
{
    CGRect trackRect = [self vd_trackRectForBounds:bounds];
    
    if (self.vd_trackHeight > 0.0f) {
        trackRect.size.height = self.vd_trackHeight;
    }
    return trackRect;
}

#pragma mark Public Class Method

#pragma mark Public Instance Method

#pragma mark load
+ (void)load
{
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(trackRectForBounds:) ), class_getInstanceMethod(self, @selector(vd_trackRectForBounds:) ) );
}

@end
