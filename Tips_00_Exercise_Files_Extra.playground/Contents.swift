//: A MapKit based Playground

import MapKit
import PlaygroundSupport


let tower = CLLocationCoordinate2DMake(48.858363,2.2946418)

// Now let's create a MKMapView
let mapView = MKMapView(frame: CGRect(x:0, y:0, width:800, height:800))
mapView.mapType = .satelliteFlyover
// Define a camera for our map view
var mapCamera = MKMapCamera(lookingAtCenter: tower, fromDistance: 1000, pitch: 45, heading: 90.0)

mapView.camera = mapCamera

// Create a map annotation
let annotation = MKPointAnnotation()
annotation.coordinate = tower
annotation.title = "Tour Eiffel"
annotation.subtitle = "No pizza here!"

mapView.addAnnotation(annotation)

// Add the created mapView to our Playground Live View
PlaygroundPage.current.liveView = mapView
