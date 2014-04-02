//
//  JALAnnotation.h
//  MapKvetch
//
//  Created by Josh Lieberman on 4/1/14.
//  Copyright (c) 2014 Josh Lieberman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface JALAnnotation : NSObject <MKAnnotation>

@property(nonatomic, assign) CLLocationCoordinate2D coordinate;
@property(nonatomic, copy) NSString *title;
@property(nonatomic, copy) NSString *subtitle;

@end
