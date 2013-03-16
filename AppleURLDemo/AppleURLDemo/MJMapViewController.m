//
//  MJMapViewController.m
//  IOSURLSchemes
//
//  Created by manjun.han on 13-3-16.
//  Copyright (c) 2013年 mj. All rights reserved.
//

#import "MJMapViewController.h"

@interface MJMapViewController ()
@property (weak, nonatomic) IBOutlet UIView *nativeView;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation MJMapViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"map" withExtension:@"html"] ;
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:url ]] ;

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)lanuch:(id)sender
{
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"http://maps.apple.com/?q=cupertino"]] ;
}
@end
