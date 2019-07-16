//
//  AppDelegate.m
//  CrowdinSDK
//
//  Created by Serhii Londar on 3/29/19.
//  Copyright © 2019 Serhii Londar. All rights reserved.
//

#import "AppDelegate.h"
#import <CrowdinSDK/CrowdinSDK-Swift.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    CrowdinProviderConfig *crowdinProviderConfig = [[CrowdinProviderConfig alloc] initWithHashString:@"53376706833043f14491518106i" stringsFileNames:@[@"Localizable.strings"] pluralsFileNames:@[@"Localizable.stringsdict"] localizations:@[@"en", @"de"] sourceLanguage:@"en"];
    NSString *credentials = @"YXBpLXRlc3RlcjpWbXBGcVR5WFBxM2ViQXlOa3NVeEh3aEM=";
    CrowdinScreenshotsConfig *screenshotsConfig = [[CrowdinScreenshotsConfig alloc] initWithLogin:@"serhii.londar" accountKey:@"1267e86b748b600eb851f1c45f8c44ce" credentials:credentials];
    CrowdinSDKConfig *config = [[[CrowdinSDKConfig config] withCrowdinProviderConfig:crowdinProviderConfig] withCrowdinScreenshotsConfig: screenshotsConfig];
    [CrowdinSDK startWithConfig:config];
    
    [CrowdinSDK addDownloadHandler:^{
        
    }];
    
    [CrowdinSDK addErrorUpdateHandler:^(NSArray<NSError *> * _Nonnull errors) {
        
    }];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end