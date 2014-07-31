//
//  MapsViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/8/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import "MapsViewController.h"
#import "SWRevealViewController.h"
#import "Comms.h"
//#import <MapKit/MapKit.h>

@interface MapsViewController ()

@end


//University Main Coordinates
#define AT_LATITUDE 36.0730360;
#define AT_LONGITUDE -79.7722320;



/*--------------------------------------------------------------------------------------------------------------------------------------------
 University Building Coordinates
 -------------------------------------------------------------------------------------------------------------------------------------------*/


//HOUSING--------------------------
 //Aggies Suites
#define SUITES_Latitude 36.075187;
#define SUITES_Longitude -79.767807;

//Pride Hall
#define PRIDE_Latitude 36.077320;
#define PRIDE_Longitude -79.767416;

//Haley Hall
#define HALEY_Latitude 36.077472;
#define HALEY_Longitide -79.768478;

//Aggie Village
#define VILLAGE_Latitude 36.076267;
#define VILLAGE_Longitude -79.772142;

//Barbee Hall
#define BARBEE_Latitude 36.072846;
#define BARBEE_Longitude -79.777766;

//Cooper Hall
#define COOPER_Latitude 36.077706;
#define COOPER_Longitude -79.772850;

//Curtis Hall
#define CURTIS_Latitude 36.073830;
#define CURTIS_Longitude -79.774094;

//Holland Hall
#define HOLAND_Latitude 36.073830;
#define HOLAND_Longitude -79.774078;

//Morrison Hall
#define Morrison_Latitude 36.074294;
#define Morrison_Longitide -79.77613;

// Morrow Hall
#define MORROW_Latitude 36.073782;
#define MORROW_Longitude -79.777297;

//Child Dev Lab
#define CHILD_Latitude 36.074324;
#define CHILD_Longitude -79.768692;

//Vanstory Hall
#define VANSTORY_Latitude 36.073501;
#define VANSTORY_Longitude -79.77914;

//Aggie Terrance
#define TERRANCE_Latitude 36.072070;
#define TERRANCE_Longitude -79.770865;
//------------------------------------

//ACADEMIC----------------------------
//Barnes Hall
#define BARNES_Latitude 36.079566;
#define BARNES_Longiude -79.771074;

//Benbow Hall
#define BENBOW_Latitude 36.073813;
#define BENBOW_Longitude -79.778278;

//Campbell Hall
#define CAMPBELL_Latitude 36.077559;
#define CAMPBELL_Longitude -79.769583;

//Carver Hall
#define CARVER_Latitude 36.080078;
#define CARVER_Longitude -79.773016;

//Cherry Hall
#define CHERRY_Latitude 36.072915;
#define CHERRY_Longitude -79.775575;

//Coltrane Hall
#define COLTRANE_Latitude 36.072343;
#define COLTRANE_Longitude -79.77034;

//Craig Hall
#define CRAIG_Latitude 36.079085;
#define CRAIG_Longitude -79.769481;

//Crosby Hall
#define CROSBY_Latitude 36.078699;
#define CROSBY_Longitude -79.769974;

//Frazier Hall
#define FRAZIER_Latitude 36.075235;
#define FRAZIER_Longitude -79.776916;

//General Classroom Blgd
#define GCB_Latitude 36.078556;
#define GCB_Longitude -79.7693316;

//Gibbs Hall
#define GIBBS_Latitude 36.072117;
#define GIBBS_Longitude -79.774529;

//Graham Hall
#define GRAHAM_Latitude 36.072716;
#define GRAHAM_Longitude -79.776197;

//Hines Hall
#define HINES_Latitude 36.075096;
#define HINES_Longitude -79.775242;

// Hodgin Hall
#define HODGIN_Latitude 36.073149;
#define HODGIN_Longitude -79.774143;

//FORT-IRC(Interdisplinary Research Center)
#define FORT_Latitude 36.073323;
#define FORT_Longitude -79.774824;

//Marteena Hall
#define MARTEENA_Latitude 36.078487;
#define MARTEENA_Longitude -79.771294;

//McNair Hall
#define MCNAIR_Latitude 36.071940;
#define MCNAIR_Longitude -79.775741;

//Merrick Hall
#define MERRICK_Latitude 36.079640;
#define MERRICK_Longitude -79.769889;

//Noble Hall
#define NOBLE_Latitude 36.075283;
#define NOBLE_Longitude -79.777635;

//Price Annex
#define PRICEANNEX_Latitude 36.079232;
#define PRICEANNEX_Longitude -79.772431;

//Price Hall
#define PRICEHALL_Latitude 36.078500;
#define PRICEHALL_Longitude -79.772624;

//Proctor Hall
#define PROCTOR_Latitude 36.074940;
#define PROCTOR_Longitude -79.771138;

//Paul Robeson Theater
#define THEATER_Latitude 36.078300;
#define THEATER_Longitude -79.770055;

//Academic Science Building
#define ASB_Latitude 36.079805;
#define ASB_Longitude -79.771916;

//Sockwell Hall
#define SOCKWELL_Latitude 36.079202;
#define SOCKWELL_Longitude -79.771798;

//Smith Technology Center
#define SMITH_Latitude 36.078443;
#define SMITH_Longitude -79.773145;

//Webb Hall
#define WEBB_Latitude 36.073332;
#define WEBB_Longitude -79.771155;

// Academic Classroom Building
#define ACB_Latitude 36.074676;
#define ACB_Longitude -79.771745;

//------------------------------------

//STUDENT SUPPORT----------------------
//Bluford Library
#define BLUFORD_Latitude 36.072677;
#define BLUFORD_Longitude -79.773467;

//Brown Hall
#define BROWN_Latitude 36.075725;
#define BROWN_Longitude -79.774137;

//Corbett Sports Center
#define CORBETT_Latitude 36.076765;
#define CORBETT_Longitude -79.769019;

//Dowdy Building
#define DOWDY_Latitude 36.072109;
#define DOWDY_Longitude -79.774454;

//Event Center
#define EVENT_Latitude 36.075499;
#define EVENT_Longitude -79.768751;

//Dudley Building
#define DUDLEY_Latitude 36.074762;
#define DUDLEY_Longitude -79.777377;

//Garrett House
#define GARRETT_Latitude 36.073817;
#define GARRETT_Longitude -79.776160;

//Gear Up
#define GEAR_Latitude 36.072655;
#define GEAR_Longitude -79.776616;

//Harrison Aud.
#define HARRISON_Latitude 36.075170;
#define HARRISON_Longitude -79.775988;

//Moore Gym
#define MOORE_Latitude 36.076635;
#define MOORE_Longitude -79.770162;

//Murphy Hall
#define MURPHY_Latitude 36.074246;
#define MURPHY_Longitude -79.775934;

//Parking Deck
#define PARKING_Latitude 36.074537;
#define PARKING_Longitude -79.773214;

//Sebastian Health Center
#define HEALTH_Latitude 36.073167;
#define HEALTH_Longitude -79.776846;

//Aggie Stadium
#define STADIUM_Latitude 36.081283;
#define STADIUM_Longitude -79.770103;

//Student Union
#define UNION_Latitude 36.077767;
#define UNION_Longitude -79.770505;

//Bryan Fitness & Wellness Center
#define BRYAN_Latitude 36.082397;
#define BRYAN_Longitude -79.769610;

//The Oaks
#define OAKS_Latitude 36.075209;
#define OAKS_Longitude -79.778289;

//Campus Recreation Center
#define REC_Latitude 36.075656;
#define REC_Longitude -79.770645;

//Williams Dining Hall
#define WILLAMS_Latitude 36.074142;
#define WILLAMS_Longitude -79.774829;



 
 //-------------------------------------------------------------------------------------------------------------------------------------------

//University Span Size
#define SPAN 0.01f;


@implementation MapsViewController

@synthesize mapView,locationManager;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}




-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    UIAlertView *errorAlert = [[UIAlertView alloc]initWithTitle:@"Location Error" message:@"Fail to track current location. Please make sure that Location Settings are enabled on the iPhone. This can be done by going into Settings<Privacy<Location Settings." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [errorAlert show];
    
    
}

-(void)mapView: (MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    CLLocationCoordinate2D loc = [userLocation coordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 20, 20);
    [self.mapView setRegion:region animated:YES];
}
-(IBAction)func:(id)sender{
    locationManager = [[CLLocationManager alloc] init];
    locationManager.distanceFilter = kCLDistanceFilterNone;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [locationManager startUpdatingLocation];
    
    
    
    [mapView setMapType:MKMapTypeStandard];
    [mapView setZoomEnabled:YES];
    [mapView setScrollEnabled:YES];
    
    MKCoordinateRegion region = { {0.0,0.0} , {0.0,0.0} };
    region.center.latitude = locationManager.location.coordinate.latitude;
    region.center.longitude = locationManager.location.coordinate.longitude;
    region.span.longitudeDelta = 0.007f;
    region.span.latitudeDelta = 0.007f;
    [mapView setRegion:region animated:YES];
    [mapView setDelegate:sender];

}

- (void)viewDidLoad
{
    [self.mapView.delegate self];
    [self.mapView setShowsUserLocation:YES];
    
    [super viewDidLoad];
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.mode = MBProgressHUDModeIndeterminate;
    hud.labelText = @"Loading";
    [hud hide:YES afterDelay:3.0];
    
    
    
    
    //Menu View Controller
    _sidebarButton.tintColor = [UIColor colorWithWhite:0.96f alpha:0.2f];
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
  
    
    // Campus Maps

    MKCoordinateRegion region;
    
    // Center region
    CLLocationCoordinate2D center;
    center.latitude = AT_LATITUDE;
    center.longitude = AT_LONGITUDE;
    
    //Span Driver
    MKCoordinateSpan span;
    span.latitudeDelta = SPAN;
    span.longitudeDelta = SPAN;
    
    region.center = center;
    region.span = span;
    
    //MKMapView Set
    [mapView setRegion:region animated:YES];
    
    
    //Annontation
    
    NSMutableArray *locations = [[NSMutableArray alloc] init];
    CLLocationCoordinate2D location;
    Comms *myAnn;
    
    
    // Academic Annontaion Implementation
    myAnn = [[Comms alloc] init];
    location.latitude = BARNES_Latitude;
    location.longitude = BARNES_Longiude;
    myAnn.coordinate =  location;
    myAnn.title = @"Barnes Hall";
    myAnn.subtitle =@"Lot 2";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = BENBOW_Latitude;
    location.longitude = BENBOW_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Benbow Hall";
    myAnn.subtitle =@"Lot 3";
    [locations addObject:myAnn];
    
    
    myAnn = [[Comms alloc] init];
    location.latitude = CAMPBELL_Latitude;
    location.longitude = CAMPBELL_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"CAmpbell Hall";
    myAnn.subtitle =@"Lot 6";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = CARVER_Latitude;
    location.longitude = CARVER_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Carver Hall";
    myAnn.subtitle =@"Lot 7";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = CHERRY_Latitude;
    location.longitude = CHERRY_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Cherry Hall";
    myAnn.subtitle =@"";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = COLTRANE_Latitude;
    location.longitude = COLTRANE_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Coltrane Hall";
    myAnn.subtitle =@"Lot 8, 37";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = CRAIG_Latitude;
    location.longitude = CRAIG_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Craig Hall";
    myAnn.subtitle =@"Lot 9";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = CROSBY_Latitude;
    location.longitude = CROSBY_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Crosby Hall";
    myAnn.subtitle =@"Lot 13";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = FRAZIER_Latitude;
    location.longitude = FRAZIER_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Fraizer Hall";
    myAnn.subtitle =@"Lot 21";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = GCB_Latitude;
    location.longitude = GCB_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"General Classroom Building";
    myAnn.subtitle =@"Lot 13";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = GIBBS_Latitude;
    location.longitude = GIBBS_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Gibbs Hall";
    myAnn.subtitle =@"Lot 16";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = GRAHAM_Latitude;
    location.longitude = GRAHAM_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Graham Hall";
    myAnn.subtitle =@"Lot 8";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = HINES_Latitude;
    location.longitude = HINES_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Hines Hall";
    myAnn.subtitle =@"Lot 15";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = HODGIN_Latitude;
    location.longitude = HODGIN_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Hodgin Hall";
    myAnn.subtitle =@"Lot 2";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = FORT_Latitude;
    location.longitude = FORT_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Fort/Interdisplinary Research Center";
    myAnn.subtitle =@"";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = MARTEENA_Latitude;
    location.longitude = MARTEENA_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Marteena Hall";
    myAnn.subtitle =@"Lot 18";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = MCNAIR_Latitude;
    location.longitude = MCNAIR_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"McNair Hall";
    myAnn.subtitle =@"Lot 16";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = MERRICK_Latitude;
    location.longitude = MERRICK_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Merrick Hall";
    myAnn.subtitle =@"Lot 9";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = NOBLE_Latitude;
    location.longitude = NOBLE_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Noble Hall";
    myAnn.subtitle =@"Lot 21";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = PRICEANNEX_Latitude;
    location.longitude = PRICEANNEX_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Price Annex";
    myAnn.subtitle =@"Lot 7";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = PRICEHALL_Latitude;
    location.longitude = PRICEHALL_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Price Hall";
    myAnn.subtitle =@"Lot 22";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = PROCTOR_Latitude;
    location.longitude = PROCTOR_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Proctor Hall";
    myAnn.subtitle =@"Lot 23";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = THEATER_Latitude;
    location.longitude = THEATER_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Paul Robeson Theater";
    myAnn.subtitle =@"";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = ASB_Latitude;
    location.longitude = ASB_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Academic Science Building";
    myAnn.subtitle =@"";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = SOCKWELL_Latitude;
    location.longitude = SOCKWELL_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Scokwell Hall";
    myAnn.subtitle =@"";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = SMITH_Latitude;
    location.longitude = SMITH_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Smith Hall/Smith Technology Center";
    myAnn.subtitle =@"";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = WEBB_Latitude;
    location.longitude = WEBB_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Webb Hall";
    myAnn.subtitle =@"Lot 26";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = ACB_Latitude;
    location.longitude = ACB_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Academic Classroom Building";
    myAnn.subtitle =@"";
    [locations addObject:myAnn];
    
    
    //Student Support Annontation Implementaton
    
    myAnn = [[Comms alloc] init];
    location.latitude = BLUFORD_Latitude;
    location.longitude = BLUFORD_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Bluford Library";
    myAnn.subtitle =@"Lot 4, 34";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = BROWN_Latitude;
    location.longitude = BROWN_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Brown Hall";
    myAnn.subtitle =@"Lot 5";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = CORBETT_Latitude;
    location.longitude = CORBETT_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Corbett Sports Center";
    myAnn.subtitle =@"";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = DOWDY_Latitude;
    location.longitude = DOWDY_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Dowdy Administration Building";
    myAnn.subtitle =@"Lot 11, 12";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = EVENT_Latitude;
    location.longitude = EVENT_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Event Center";
    myAnn.subtitle =@"Lot 17";
    [locations addObject:myAnn];

    myAnn = [[Comms alloc] init];
    location.latitude = DUDLEY_Latitude;
    location.longitude = DUDLEY_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Dudley Building/University Gallery";
    myAnn.subtitle =@"Lot 45";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = GARRETT_Latitude;
    location.longitude = GARRETT_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Garrett House";
    myAnn.subtitle =@"";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = GEAR_Latitude;
    location.longitude = GEAR_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Gear Up";
    myAnn.subtitle =@"Lot 8";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = HARRISON_Latitude;
    location.longitude = HARRISON_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Harrison Auditorium";
    myAnn.subtitle =@"Lot 14";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = MOORE_Latitude;
    location.longitude = MOORE_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Moore Gym";
    myAnn.subtitle =@"Lot 19";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = MURPHY_Latitude;
    location.longitude = MURPHY_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Murphy Hall";
    myAnn.subtitle =@"Lot 20";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = PARKING_Latitude;
    location.longitude = PARKING_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Parking Deck";
    myAnn.subtitle =@"";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = HEALTH_Latitude;
    location.longitude = HEALTH_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Sebastian Health Center";
    myAnn.subtitle =@"Lot 24";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = STADIUM_Latitude;
    location.longitude = STADIUM_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Aggie Stadium";
    myAnn.subtitle =@"Lot A3, A4";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = UNION_Latitude;
    location.longitude = UNION_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Memorial Student Union";
    myAnn.subtitle =@"Lot 40";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = BRYAN_Latitude;
    location.longitude = BRYAN_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Bryan Fitness & Wellness Center";
    myAnn.subtitle =@"";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude =OAKS_Latitude;
    location.longitude = OAKS_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"The Oaks";
    myAnn.subtitle =@"";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = REC_Latitude;
    location.longitude = REC_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Campus Recreation Center";
    myAnn.subtitle =@"";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = WILLAMS_Latitude;
    location.longitude = WILLAMS_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Williams Dining Hall";
    myAnn.subtitle =@"Lot 28";
    [locations addObject:myAnn];
    
    // Campus Housing Annontaiton Implementation
    
    myAnn = [[Comms alloc] init];
    location.latitude = SUITES_Latitude;
    location.longitude = SUITES_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Aggies Suites";
    myAnn.subtitle =@"Lot 30, 31";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = VILLAGE_Latitude;
    location.longitude = VILLAGE_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Aggie Village";
    myAnn.subtitle =@"Lot 32";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = HALEY_Latitude;
    location.longitude = HALEY_Longitide;
    myAnn.coordinate =  location;
    myAnn.title = @"Haley Hall";
    myAnn.subtitle =@"Lot 6";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = BARBEE_Latitude;
    location.longitude = BARBEE_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Barbee Hall";
    myAnn.subtitle =@"Lot 33";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = COOPER_Latitude;
    location.longitude = COOPER_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Cooper Hall";
    myAnn.subtitle =@"";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = CURTIS_Latitude;
    location.longitude = CURTIS_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Curtis Hall";
    myAnn.subtitle =@"";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = HOLAND_Latitude;
    location.longitude = HOLAND_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Holland Hall";
    myAnn.subtitle =@"";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = Morrison_Latitude;
    location.longitude = Morrison_Longitide;
    myAnn.coordinate =  location;
    myAnn.title = @"Morrison Hall";
    myAnn.subtitle =@"";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = MORROW_Latitude;
    location.longitude = MORROW_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Morrow Hall";
    myAnn.subtitle =@"";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = CHILD_Latitude;
    location.longitude = CHILD_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Child Developement Lab";
    myAnn.subtitle =@"";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = PRIDE_Latitude;
    location.longitude = PRIDE_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Pride Hall";
    myAnn.subtitle =@"Lot 43";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = VANSTORY_Latitude;
    location.longitude = VANSTORY_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Vanstory Hall";
    myAnn.subtitle =@"Lot 33";
    [locations addObject:myAnn];
    
    myAnn = [[Comms alloc] init];
    location.latitude = TERRANCE_Latitude;
    location.longitude = TERRANCE_Longitude;
    myAnn.coordinate =  location;
    myAnn.title = @"Aggie Terrance";
    myAnn.subtitle =@"Lot 47";
    [locations addObject:myAnn];
    
    
    
    
    [self.mapView addAnnotations:locations];
	// Do any additional setup after loading the view.
}








- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
