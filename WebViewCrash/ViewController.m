//
//  ViewController.m
//  WebViewCrash
//
//  Created by Ciprian Rarau on 2014-10-28.
//  Copyright (c) 2014 Example. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIWebView *webView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSURLRequest * urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.amazon.com"]];
    
    self.webView.layer.cornerRadius = 0;
    self.webView.userInteractionEnabled = YES;
    self.webView.multipleTouchEnabled = YES;
    self.webView.backgroundColor = [UIColor clearColor];
    self.webView.scrollView.scrollEnabled = NO;
    self.webView.scrollView.bounces = NO;
    [self.webView loadRequest:urlRequest];
}

@end
