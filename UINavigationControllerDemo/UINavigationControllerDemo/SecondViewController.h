//
//  SecondViewController.h
//  UINavigationControllerDemo
//
//  Created by Mac on 17/01/2025.
//

#import <UIKit/UIKit.h>
#import "ClearTxt.h"

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *msgLbl;
@property (nonatomic, copy) NSString *userName;
// first VC
@property id<ClearTxt> firstVC;

@end

NS_ASSUME_NONNULL_END
