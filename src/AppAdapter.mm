//
//  AppAdapter.m
//  anothertest
//
//  Created by Ying Quan Tan on 2/6/18.
//

#import "AppAdapter.h"
#import "ofApp.h"

@interface AppAdapter()

@property (assign, nonatomic) ofApp *app;

@end

@implementation AppAdapter

- (id)initWithApp:(ofApp *)app {
    self.app = (ofApp *)app;
    return self;
}

- (void)saySomething {
    self.app->hi();
}


@end
