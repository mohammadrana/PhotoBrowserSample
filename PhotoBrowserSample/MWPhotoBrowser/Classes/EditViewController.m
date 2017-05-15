//
//  EditViewController.m
//  PhotoBrowserDemo
//
//  Created by Vishwanath Vallamkondi on 15/03/13.
//
//

#import "EditViewController.h"
#import "MWPhoto.h"

@interface EditViewController ()

@end

@implementation EditViewController

- (id) initWithPhotoObj:(MWPhoto*)photo
{
    if (self = [super init])
    {
        _photoObj = [photo retain];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    captionField.text = _photoObj.caption;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [captionField resignFirstResponder];
}

- (IBAction)saveCaption:(id)sender
{
    _photoObj.caption = captionField.text;
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)dealloc {
    [captionField release];
    [_photoObj release];
    [super dealloc];
}
- (void)viewDidUnload {
    [super viewDidUnload];
}
@end
