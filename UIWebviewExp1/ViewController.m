//
//  ViewController.m
//  UIWebviewExp1
//
//  Created by Damien Bell on 2/27/13.
//  Copyright (c) 2013 Damien Bell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController

@synthesize webView= _webView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    /*
    //load an external url
    
    NSURL *url= [NSURL URLWithString:@"http://onlyindie.herokuapp.com/"];
    NSURLRequest *req= [NSURLRequest requestWithURL:url];
    [_webView loadRequest:req];
    */
    
    //load local html in www directory
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"]];
    [_webView loadRequest:[NSURLRequest requestWithURL:url]];
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
