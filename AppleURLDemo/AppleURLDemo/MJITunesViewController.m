//
//  MJITunesViewController.m
//  IOSURLSchemes
//
//  Created by manjun.han on 13-3-16.
//  Copyright (c) 2013年 mj. All rights reserved.
//

#import "MJITunesViewController.h"

@interface MJITunesViewController ()
@property (weak, nonatomic) IBOutlet UIView *nativeView;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation MJITunesViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"itunes" withExtension:@"html"] ;
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:url ]] ;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)langch:(id)sender
{
    if(![[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"https://itunes.apple.com/cn/app/numbers/id361304891?mt=8"]] ){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"" message:@"无法打开程序" delegate:nil cancelButtonTitle:@"确认" otherButtonTitles: nil] ;
        [alert show] ;
    }
}


@end
