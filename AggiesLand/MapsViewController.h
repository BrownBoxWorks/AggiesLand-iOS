//
//  MapsViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/8/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface MapsViewController : UIViewController <CLLocationManagerDelegate>
    
@property (weak,nonatomic) IBOutlet MKMapView *mapView;
@property (weak,nonatomic)IBOutlet UIBarButtonItem *sidebarButton;

@property (strong, nonatomic) IBOutlet CLLocationManager *locationManager;
- (IBAction)func:(id)sender;

@end
