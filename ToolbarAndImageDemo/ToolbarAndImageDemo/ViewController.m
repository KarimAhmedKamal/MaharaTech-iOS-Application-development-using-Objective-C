//
//  ViewController.m
//  ToolbarAndImageDemo
//
//  Created by Mac on 18/01/2025.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *myImage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)Action2:(UIButton *)sender {
    printf("Action 2\n");
}

- (IBAction)Action1:(UIBarButtonItem *)sender {
    printf("Action 1\n");
    // set UIImage
    UIImage *img = [UIImage imageNamed:@"Unknown-1.png"];
    [_myImage setImage:img];
}
@end
