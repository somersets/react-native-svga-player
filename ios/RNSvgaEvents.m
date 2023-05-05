//
//  RNSvgaEvents.m
//  RNSvgaPlayer
//
//  Created by Nikita Likhachev on 05.05.2023.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "RNSvgaPlayer.h"
#import "RNSvgaEvents.h"



@implementation RNSvgaEvents

- (instancetype)initWithIdentifier:(int)onLoadingEndIdentifier {
    self = [super init];
    if (self) {
        // Инициализация объекта
        _kReactOnLoadingEndIdentifier = onLoadingEndIdentifier;
    }
    return self;
}


- (RCTBubblingEventBlock)onLoadingEnd {
    return objc_getAssociatedObject(self, &_kReactOnLoadingEndIdentifier);
}

@end
