//
//  ViewController.m
//  DownloadingDemo
//
//  Created by Mac on 19/01/2025.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, copy) NSString *urlString;
@property (nonatomic) NSURL *url;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *downloadIndicator;
- (IBAction)downloadBtn:(id)sender;

//@property (nonatomic, copy) NSString *urlString;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // download indicator
    [_downloadIndicator startAnimating];
    [_downloadIndicator setHidden:YES];
    
    _urlString = @"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXrr7_cUqsH6KLDX0x0pvjWP4sjPnfCPOpFQ&s";
    _url = [[NSURL alloc] initWithString:_urlString];
    
}


- (IBAction)downloadBtn:(id)sender {
    // show downloadIndicator
    [_downloadIndicator setHidden:NO];
    
    //    _imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:_url]];
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask * sessionData = [session dataTaskWithURL:_url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error == nil && data != nil) {
            //            dispatch_async(dispatch_get_main_queue(), ^{
            //                self.imageView.image = [UIImage imageWithData:data];
            //            });
            //            self.imageView.image = [UIImage imageWithData:data];
            
            [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                self.imageView.image = [UIImage imageWithData:data];
                [self.downloadIndicator setHidden:YES];
                
            }];
        }
    }];
    // run the session
    [sessionData resume];
}
@end
