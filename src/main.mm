#include "ofApp.h"
#import "anothertest-Swift.h"
#import "AppAdapter.h"

/**
 https://developer.apple.com/library/content/documentation/Swift/Conceptual/BuildingCocoaApps/MixandMatch.html

 */
int main() {
    
    //  here are the most commonly used iOS window settings.
    //------------------------------------------------------
    ofiOSWindowSettings settings;
    settings.enableRetina = false; // enables retina resolution if the device supports it.
    settings.enableDepth = false; // enables depth buffer for 3d drawing.
    settings.enableAntiAliasing = false; // enables anti-aliasing which smooths out graphics on the screen.
    settings.numOfAntiAliasingSamples = 0; // number of samples used for anti-aliasing.
    settings.enableHardwareOrientation = false; // enables native view orientation.
    settings.enableHardwareOrientationAnimation = false; // enables native orientation changes to be animated.
    settings.glesVersion = OFXIOS_RENDERER_ES1; // type of renderer to use, ES1, ES2, ES3
    settings.windowMode = OF_FULLSCREEN;
    ofCreateWindow(settings);

    TestViewController * controller = [[TestViewController alloc] initWithNibName:nil bundle:nil];
    ofApp *app = new ofApp;
    app->controller = controller;

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{

        ofxiOSAppDelegate *del = [UIApplication sharedApplication].delegate;
        UIViewController *parentVC = del.glViewController;


        controller.appAdapter = [[AppAdapter alloc] initWithApp:app];
        [parentVC addChildViewController:controller];
        [parentVC.view addSubview:controller.view];
//        [controller.view autoPinEdgesToSuperviewEdges];
    });


	return ofRunApp(app);
}
