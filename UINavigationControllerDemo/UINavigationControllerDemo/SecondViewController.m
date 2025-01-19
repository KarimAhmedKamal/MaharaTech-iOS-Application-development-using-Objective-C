//
//  SecondViewController.m
//  UINavigationControllerDemo
//
//  Created by Mac on 17/01/2025.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // when view loads, copy value from useName string (got set from main VC) to the lbl
    _msgLbl.text = [@"Hello " stringByAppendingString:_userName];
    // right bar btn
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(clear)];
    self.navigationItem.rightBarButtonItem = rightBtn;
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void) clear {
    printf("CLEAR\n");
    // use first VC clear method 
    [_firstVC clear];
    // pop current view to return to the previous view in the view stack
    /*
     Note : navigation controller is controlls the view stack
     */
    [self.navigationController popViewControllerAnimated:YES];
}
 
@end
