//
//  AppAdapter.h
//  anothertest
//
//  Created by Ying Quan Tan on 2/6/18.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@interface AppAdapter : NSObject

- (void)saySomething;

@end

#if __cplusplus
class ofApp;
@interface AppAdapter(cplusplus)
- (id)initWithApp:(ofApp *)app;
@end
#endif
