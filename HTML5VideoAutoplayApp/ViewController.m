//
//  ViewController.m
//  HTML5VideoAutoplayApp
//
//  Created by Jeffrey Linwood on 10/1/14.
//  Copyright (c) 2014 Jeff Linwood. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *htmlFilePath = [[NSBundle mainBundle] pathForResource:@"html5videoautoplay.html" ofType:@""];
    NSString *html = [NSString stringWithContentsOfFile:htmlFilePath encoding:NSUTF8StringEncoding error:nil];
    NSURL *baseURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]];
    self.webView.mediaPlaybackRequiresUserAction = NO;
    [self.webView loadHTMLString:html baseURL:baseURL];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
