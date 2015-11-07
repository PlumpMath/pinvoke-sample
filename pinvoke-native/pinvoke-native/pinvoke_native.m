//
//  pinvoke_native.m
//  pinvoke-native
//
//  Created by Ivan Burlakov on 07/11/15.
//  Copyright © 2015 Ivan Burlakov. All rights reserved.
//

#import "pinvoke_native.h"

@implementation pinvoke_native

- (void)helloWorld {
    NSLog(@"Hello world from objective-c");
}

@end

void helloWorld() {
    [[[pinvoke_native alloc] init] helloWorld];
}