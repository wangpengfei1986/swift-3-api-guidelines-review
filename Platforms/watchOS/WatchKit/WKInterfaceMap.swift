
@available(watchOS 2.0, *)
enum WKInterfaceMapPinColor : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case red
  case green
  case purple
}
@available(watchOS 2.0, *)
class WKInterfaceMap : WKInterfaceObject {
  func setVisibleMapRect(_ mapRect: MKMapRect)
  func setRegion(_ coordinateRegion: MKCoordinateRegion)
  func addAnnotation(_ location: CLLocationCoordinate2D, with image: UIImage?, centerOffset offset: CGPoint)
  func addAnnotation(_ location: CLLocationCoordinate2D, withImageNamed name: String?, centerOffset offset: CGPoint)
  func addAnnotation(_ location: CLLocationCoordinate2D, with pinColor: WKInterfaceMapPinColor)
  func removeAllAnnotations()
}
