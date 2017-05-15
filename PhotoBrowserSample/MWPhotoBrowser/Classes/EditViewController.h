//
//  EditViewController.h
//  PhotoBrowserDemo
//
//  Created by Vishwanath Vallamkondi on 15/03/13.
//
//

#import <UIKit/UIKit.h>

@class MWPhoto;

@interface EditViewController : UIViewController
{

    IBOutlet UITextField *captionField;
    
    MWPhoto* _photoObj;

}

- (id) initWithPhotoObj:(MWPhoto*)photo;

- (IBAction)saveCaption:(id)sender;
@end
