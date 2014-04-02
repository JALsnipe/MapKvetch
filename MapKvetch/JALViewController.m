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
    
    // 1. Create a coordinate for use with the annotation
    CLLocationCoordinate2D jtsLocation;
    jtsLocation.latitude = JTS_LAT;
    jtsLocation.longitude = JTS_LON;
    
    JALAnnotation *myAnnotation = [JALAnnotation alloc];
    myAnnotation.coordinate = jtsLocation;
    myAnnotation.title = @"JTS";
    myAnnotation.subtitle = @"The Beisiest Place on Earth!";
    
    [self.myMapview addAnnotation:myAnnotation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end