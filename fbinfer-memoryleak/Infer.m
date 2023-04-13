//
//  Infer.m
//  FBInfer-MemoryLeak
//
//  Created by Lê Hoàng Vũ on 13/04/2023.
//

#import <Foundation/Foundation.h>

@interface Builder: NSObject

@property (nonatomic, readonly) Builder * (^next)(void);

@end

@implementation Builder

- (Builder* (^)(void))next {
    return ^Builder * {
        NSLog(@"Do something");
        return self;
    };
}

@end

void infer(void) {
    Builder* builder = [[Builder alloc] init];
    builder
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next();
}
