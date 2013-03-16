//
//  MJPhoneViewController.m
//  IOSURLSchemes
//
//  Created by manjun.han on 13-3-16.
//  Copyright (c) 2013年 mj. All rights reserved.
//

#import "MJPhoneViewController.h"

@interface MJPhoneViewController ()

@property (weak, nonatomic) IBOutlet UIView *nativeView;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation MJPhoneViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"tel" withExtension:@"html"] ;
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:url ]] ;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)lanuch:(id)sender
{
    if(![[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"tel:1-408-555-5555"]] ){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"" message:@"无法打开程序" delegate:nil cancelButtonTitle:@"确认" otherButtonTitles: nil] ;
        [alert show] ;        
    }
}
@end
