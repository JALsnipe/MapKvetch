//
//  JALViewController.h
//  MapKvetch
//
//  Created by Josh Lieberman on 4/1/14.
//  Copyright (c) 2014 Josh Lieberman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface JALViewController : UIViewController
@property (weak, nonatomic) IBOutlet MKMapView *myMapview;

//- (void)setUserTrackingMode:(MKUserTrackingMode)mode animated:(BOOL)animated NS_AVAILABLE(NA, 5_0);
//- (void)setUserTrackingMode:(MKUserTrackingMode)mode animated:(BOOL)animated;
@end
