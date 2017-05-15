//
//  ViewController.m
//  PhotoBrowserSample
//
//  Created by Rana on 12/5/16.
//  Copyright © 2016 Rana. All rights reserved.
//

#import "ViewController.h"
#import "ZQPhotoBrowser.h"
#import "ZQImage.h"


@interface ViewController ()
{
    NSMutableArray *ZQPhotoBrowserVCArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    UIBarButtonItem * test = [[UIBarButtonItem alloc]initWithTitle:@"aaaa" style:UIBarButtonItemStylePlain target:self action:@selector(ok)];
//    
//    self.toolbarItems = @[test];
//    
//    //Simulation Sets the status bar color
//    self.navigationController.toolbar.barTintColor = [UIColor redColor];
//    //Simulation Sets the navigation title color
//    [self.navigationController.navigationBar setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor blackColor] }];
//    
//    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
//    [[UIApplication sharedApplication]setStatusBarStyle:UIStatusBarStyleDefault];
//    
//    [self.navigationController setToolbarHidden:NO];
    
    
    [self photoBrowser];
}

- (void) photoBrowser{
    
    ZQPhotoBrowserVCArray = [[NSMutableArray alloc]  init];
    
    ZQPhotoBrowserVC * bvc = [[ZQPhotoBrowserVC alloc]init];
    
    NSArray * urls = @[@"http://img3.cache.netease.com/photo/0001/2016-12-01/C76H7UJ300AO0001.jpg",
                       @"http://img3.cache.netease.com/photo/0001/2016-12-01/C76E1EI300AP0001.jpg",
                       @"http://img3.cache.netease.com/photo/0001/2016-12-01/900x600_C76E1F7K00AP0001.jpg",
                       @"http://img6.cache.netease.com/photo/0001/2016-12-01/900x600_C76E1G0G00AP0001.jpg"];
    
    
    for (NSString *url in urls) {
        ZQPhotoBrowserModel * model1 = [ZQPhotoBrowserModel new];
        model1.imageUrl = url;
        model1.caption = [url lastPathComponent];
        [ZQPhotoBrowserVCArray addObject:model1];
    }
    
    //    id object = [ZQPhotoBrowserVCArray objectAtIndex:selectedIndex];
    //    [ZQPhotoBrowserVCArray removeObjectAtIndex:selectedIndex];
    //    [ZQPhotoBrowserVCArray insertObject:object atIndex:0];
    
    bvc.models = [NSArray arrayWithArray:ZQPhotoBrowserVCArray];
    [bvc selectedIndex:2];
    [self.navigationController pushViewController:bvc animated:YES];

/*
    ZQPhotoBrowserModel * model1 = [ZQPhotoBrowserModel new];
    model1.imageUrl = @"http://img3.cache.netease.com/photo/0001/2016-12-01/C76H7UJ300AO0001.jpg";
    //model1.caption = @"November 30, 2016, Washington, US President Barack Obama at the White House met with 2016 Nobel Prize in Chemistry winner Fraser Stoddart, physics award winner J. Michael Kosteliz, Economics Award Winner Oliver Hart";
    
    ZQPhotoBrowserModel * model2 = [ZQPhotoBrowserModel new];
    model2.imageUrl = @"http://img3.cache.netease.com/photo/0001/2016-12-01/C76E1EI300AP0001.jpg";
    //model2.caption = @"November 30, 2016 news, Shenzhen, November 25, an article entitled Luo smile, you give me stop, the article brush friends circle. However, the Internet began to appear a large number of questions, said the incident is a cancer girl bloody marketing is a disease by hype. In the cusp of the Rolle, in the face of all kinds of questions to the outside world to respond";
    
    
    ZQPhotoBrowserModel * model3 = [ZQPhotoBrowserModel new];
    model3.imageUrl = @"http://img3.cache.netease.com/photo/0001/2016-12-01/900x600_C76E1F7K00AP0001.jpg";
    //model3.caption = @"Rolle issued a document that the current medical expenses needed to laugh enough, stop the public number of appreciation and other donations. November 30 morning, Shenzhen Copper Man Financial Services Co., Ltd. Responsible person Responses: According to incomplete statistics, only 30 am Tencent opening donation channel, has received donations of more than 200 million; , Will achieve 500,000 yuan donation. Recently, we will announce the donation details and other details, the rumors will be self-defeating. The company also said that the Shenzhen municipal civil affairs departments have been involved in the joint supervision of the use of this money.";
    
    
    ZQPhotoBrowserModel * model4 = [ZQPhotoBrowserModel new];
    model4.imageUrl = @"http://img6.cache.netease.com/photo/0001/2016-12-01/900x600_C76E1G0G00AP0001.jpg";
    //model4.caption = @"Luoer said in an interview in the end, their families can now afford to pay the cost of her daughter smiled, the cost of friends into the future has more than the cost of her daughter for treatment";
*/

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
