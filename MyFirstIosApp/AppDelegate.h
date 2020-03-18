//
//  AppDelegate.h
//  MyFirstIosApp
//
//  Created by 左春生 on 2020/3/16.
//  Copyright © 2020 zuo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

