//
//  SecondViewController.h
//  UserDefaultsAndSwipeDemo
//
//  Created by Mac on 18/01/2025.
//

#import <UIKit/UIKit.h>
#import "ReadUserDefaults.h"

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController
// pointer to delegate
@property id<ReadUserDefaults> readTxtInMainView;
@end

NS_ASSUME_NONNULL_END
