//
//  ViewController.m
//  UINavigationControllerDemo
//
//  Created by Mac on 17/01/2025.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textIn;
- (IBAction)sayHelloBtn:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)sayHelloBtn:(id)sender {
    // secondViewController init using storyboard
    SecondViewController *sVC = [self.storyboard instantiateViewControllerWithIdentifier:@"secondVC"];
    // set userName string in second Screen to the text box value
    sVC.userName = _textIn.text;
    // make _firstVC in sVC points to this VC
    sVC.firstVC = self;
    // navigate to the secondVC
    [self.navigationController pushViewController:sVC animated:YES];
}

- (void) clear {
    _textIn.text = @"";
}
@end
