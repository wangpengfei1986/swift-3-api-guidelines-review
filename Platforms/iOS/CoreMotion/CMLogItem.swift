
@available(iOS 4.0, *)
class CMLogItem : Object, SecureCoding, Copying {
  var timestamp: TimeInterval { get }
  init()
  @available(iOS 4.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 4.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}