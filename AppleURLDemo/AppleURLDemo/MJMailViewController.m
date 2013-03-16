//
//  MJMailViewController.m
//  IOSURLSchemes
//
//  Created by manjun.han on 13-3-16.
//  Copyright (c) 2013年 mj. All rights reserved.
//

#import "MJMailViewController.h"

@interface MJMailViewController ()
@property (weak, nonatomic) IBOutlet UIView *nativeView;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation MJMailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"mail" withExtension:@"html"] ;
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:url ]] ;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)lanuch:(id)sender
{
    if(![[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"mailto:frank@wwdcdemo.example.com"]] ){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"" message:@"无法打开程序" delegate:nil cancelButtonTitle:@"确认" otherButtonTitles: nil] ;
        [alert show] ;
    }

}



@end
