//
//  JALViewController.m
//  MapKvetch
//
//  Created by Josh Lieberman on 4/1/14.
//  Copyright (c) 2014 Josh Lieberman. All rights reserved.
//

#import "JALViewController.h"
#import "JALAnnotation.h"

@interface JALViewController ()

@end

// JTS coordinates
#define JTS_LAT 40.812027;
#define JTS_LON -73.960588;

// Goldsmith coordinates
#define GOL_LAT 40.811160
#define GOL_LON -73.961073

// 102 Hester St
#define HESTER_LAT 40.716676;
#define HESTER_LON -73.993623;

// Tenement Museum
#define TEN_LAT 40.718767;
#define TEN_LON -73.990025

// Jewish Daily Forward
#define FOR_LAT 40.706702
#define FOR_LON -74.006446

// High School of Art and Design
#define ART_LAT 40.758853
#define ART_LON -73.966285

// Span
#define THE_SPAN 0.003f;

@implementation JALViewController
@synthesize myMapview;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Create the region
    MKCoordinateRegion myRegion;
    
    // Center
    CLLocationCoordinate2D center;
    center.latitude = JTS_LAT;
    center.longitude = JTS_LON;
    
    // Span
    MKCoordinateSpan span;
    span.latitudeDelta = THE_SPAN;
    span.longitudeDelta = THE_SPAN;
    
    myRegion.center = center;
    myRegion.span = span;
    
    // Set our mapView
    [myMapview setRegion:myRegion animated:YES];
    
    // Annotation
    NSMutableArray *locations = [[NSMutableArray alloc] init];
    CLLocationCoordinate2D location;
    JALAnnotation *myAnn;
    
    // JTS annotation
    myAnn = [[JALAnnotation alloc] init];
    location.latitude = JTS_LAT;
    location.longitude = JTS_LON;
    myAnn.coordinate = location;
    myAnn.title = @"JTS";
    myAnn.subtitle = @"The start of it all";
    [locations addObject:myAnn];
    
    // Hester St annotation
    myAnn = [[JALAnnotation alloc] init];
    location.latitude = HESTER_LAT;
    location.longitude = HESTER_LON;
    myAnn.coordinate = location;
    myAnn.title = @"Hester St";
    myAnn.subtitle = @"Location of Cahan's Yekl";
    [locations addObject:myAnn];
    
    // Tenement Museum annotation
    myAnn = [[JALAnnotation alloc] init];
    location.latitude = TEN_LAT;
    location.longitude = TEN_LON;
    myAnn.coordinate = location;
    myAnn.title = @"Tenement Museum";
    myAnn.subtitle = @"Museum on America's Urban Immigrant History";
    [locations addObject:myAnn];
    
    // Goldsmith annotation
    myAnn = [[JALAnnotation alloc] init];
    location.latitude = GOL_LAT;
    location.longitude = GOL_LON;
    myAnn.coordinate = location;
    myAnn.title = @"Goldsmith Hall";
    myAnn.subtitle = @"My Jewish home away from home";
    [locations addObject:myAnn];
    
    // Jewish Daily Forward annotation
    myAnn = [[JALAnnotation alloc] init];
    location.latitude = FOR_LAT;
    location.longitude = FOR_LON;
    myAnn.coordinate = location;
    myAnn.title = @"Jewish Daily Forward Office";
    myAnn.subtitle = @"Yiddish Newspaper and Jewish Culture";
    [locations addObject:myAnn];
    
    [self.myMapview addAnnotations:locations];
    
    // Old annotation code for single pin
    /*
    // 1. Create a coordinate for use with the annotation
    CLLocationCoordinate2D jtsLocation;
    jtsLocation.latitude = JTS_LAT;
    jtsLocation.longitude = JTS_LON;
    
    JALAnnotation *myAnnotation = [JALAnnotation alloc];
    myAnnotation.coordinate = jtsLocation;
    myAnnotation.title = @"JTS";
    myAnnotation.subtitle = @"The Beisiest Place on Earth!";
    
    [self.myMapview addAnnotation:myAnnotation];
     */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end