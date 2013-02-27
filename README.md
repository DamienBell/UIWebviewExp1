One of the niceties us web devs get from IOS is the UIWebview.  This is essentially a sandboxed browser with no navigation. The communication back, and forth between webviews is how frameworks like PhoneGap run javascript on IOS devices. This can be extremely handy, for creating hybrid html5/Objective-C apps, or simply running an existing webapp.

Depending on the needs of your app, you may be able to get away with only using one web view to run your whole app. Let's get back to familiar territory with a webview.

##Open an external website in a UIWebview

I'm assuming you've already dropped a webview into your view controller, and connected it in your view controller's .h file. For the sake of this snippet we'll call our webview _webView_.

    - (void)viewDidLoad
    {
      NSURL *url= [NSURL URLWithString:@"http://onlyindie.herokuapp.com/"];
      NSURLRequest *req= [NSURLRequest requestWithURL:url];  
      [_webView loadRequest:req];
      [super viewDidLoad];
    }

NSURL objects are handy for external urls, but they can also be used to access local files.

If you'd prefer to load local html then drop your html, css, and js files into a directory then drag them into your project folder. Click the 'copy items into destination' option, and select 'create groups for added folders'. I'm going to call mine _www_, and the file I'd like to open within that is _index.html_.

We'll open our directory with another NSURL object, but this time we'll use the method _fileURLWithPath_ to initializ our NSURL.

    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"]];
    [_webView loadRequest:[NSURLRequest requestWithURL:url]];

Easy!