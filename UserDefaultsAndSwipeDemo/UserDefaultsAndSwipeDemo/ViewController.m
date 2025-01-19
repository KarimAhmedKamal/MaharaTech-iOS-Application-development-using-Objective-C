//
//  ViewController.m
//  UserDefaultsAndSwipeDemo
//
//  Created by Mac on 18/01/2025.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLbl;
@property NSUserDefaults *myUserDefaults;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // initialize swipe gesture
    UISwipeGestureRecognizer *leftGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(goToNext)];
    // define gesture direction
    leftGesture.direction = UISwipeGestureRecognizerDirectionLeft ;
    // add the gesture to the view
    [self.view addGestureRecognizer:leftGesture];
    // initialize userdefaults
    _myUserDefaults = [NSUserDefaults standardUserDefaults];
}

- (void) goToNext {
    // initialize second VC
    SecondViewController *secondVC = [self.storyboard instantiateViewControllerWithIdentifier:@"secondVC"];
    // make _firstVC in sVC points to this VC
    secondVC.readTxtInMainView = self;
    // show second view (note: we didn't use navigation controller)
    [self presentViewController:secondVC animated:YES completion:^{printf("Presented\n");}];
}

- (void) readUserDefaults {
    printf("hhhhhhh\n");
    NSString *str = [_myUserDefaults objectForKey:@"name"];
    if (str != nil) {
        _myLbl.text = [@"Hello " stringByAppendingString:str];
    }
}

@end
