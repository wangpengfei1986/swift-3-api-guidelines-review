
@available(OSX 10.11, *)
class PersonNameComponents : Object, Copying, SecureCoding {
  var namePrefix: String?
  var givenName: String?
  var middleName: String?
  var familyName: String?
  var nameSuffix: String?
  var nickname: String?
  @NSCopying var phoneticRepresentation: PersonNameComponents?
  init()
  @available(OSX 10.11, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}