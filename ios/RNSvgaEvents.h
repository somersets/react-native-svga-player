//
//  RNSvgaEvents.h
//  RNSvgaPlayer
//
//  Created by Nikita Likhachev on 05.05.2023.
//  Copyright © 2023 Facebook. All rights reserved.
//


@interface RNSvgaEvents:NSObject
    @property (nonatomic, readonly) int kReactOnLoadingEndIdentifier;

    - (instancetype)initWithIdentifier:(int)onLoadingEndIdentifier;
    - (RCTBubblingEventBlock)onLoadingEnd;
@end
