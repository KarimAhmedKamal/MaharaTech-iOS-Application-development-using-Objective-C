//
//  SecondViewController.m
//  UserDefaultsAndSwipeDemo
//
//  Created by Mac on 18/01/2025.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property NSUserDefaults *myUserDefaults;
@property (weak, nonatomic) IBOutlet UITextField *myTxt;
- (IBAction)myBtn:(id)sender;


@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // initialize swipe gesture
    UISwipeGestureRecognizer *rightGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(goToPrevious)];
    // define gesture direction
    rightGesture.direction = UISwipeGestureRecognizerDirectionRight ;
    // add the gesture to the view
    [self.view addGestureRecognizer:rightGesture];
    // initialize userdefaults
    _myUserDefaults = [NSUserDefaults standardUserDefaults];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void) goToPrevious {
    [self dismissViewControllerAnimated:YES completion:^{printf("Dismissed\n");}];
}

- (IBAction)myBtn:(id)sender {
    // set an object using userdefaults
    [_myUserDefaults setObject:_myTxt.text forKey:@"name"];
    printf("saved!!!\n");
    // run ReadUserDefaults method at main view
    [_readTxtInMainView readUserDefaults];
}
@end
