
@available(tvOS 7.0, *)
class JSValue : NSObject {
  var context: JSContext! { get }
  /*not inherited*/ init!(object value: AnyObject!, in context: JSContext!)
  /*not inherited*/ init!(bool value: Bool, in context: JSContext!)
  /*not inherited*/ init!(double value: Double, in context: JSContext!)
  /*not inherited*/ init!(int32 value: Int32, in context: JSContext!)
  /*not inherited*/ init!(uInt32 value: UInt32, in context: JSContext!)
  /*not inherited*/ init!(newObjectIn context: JSContext!)
  /*not inherited*/ init!(newArrayIn context: JSContext!)
  /*not inherited*/ init!(newRegularExpressionFromPattern pattern: String!, flags flags: String!, in context: JSContext!)
  /*not inherited*/ init!(newErrorFromMessage message: String!, in context: JSContext!)
  /*not inherited*/ init!(nullIn context: JSContext!)
  /*not inherited*/ init!(undefinedIn context: JSContext!)
  func toObject() -> AnyObject!
  func toObjectOf(_ expectedClass: AnyClass!) -> AnyObject!
  func toBool() -> Bool
  func toDouble() -> Double
  func toInt32() -> Int32
  func toUInt32() -> UInt32
  func toNumber() -> NSNumber!
  func toString() -> String!
  func toDate() -> NSDate!
  func toArray() -> [AnyObject]!
  func toDictionary() -> [NSObject : AnyObject]!
  func forProperty(_ property: String!) -> JSValue!
  func setValue(_ value: AnyObject!, forProperty property: String!)
  func deleteProperty(_ property: String!) -> Bool
  func hasProperty(_ property: String!) -> Bool
  func defineProperty(_ property: String!, descriptor descriptor: AnyObject!)
  func atIndex(_ index: Int) -> JSValue!
  func setValue(_ value: AnyObject!, at index: Int)
  var isUndefined: Bool { get }
  var isNull: Bool { get }
  var isBoolean: Bool { get }
  var isNumber: Bool { get }
  var isString: Bool { get }
  var isObject: Bool { get }
  @available(tvOS 9.0, *)
  var isArray: Bool { get }
  @available(tvOS 9.0, *)
  var isDate: Bool { get }
  func isEqual(to value: AnyObject!) -> Bool
  func isEqualWithTypeCoercion(to value: AnyObject!) -> Bool
  func isInstance(of value: AnyObject!) -> Bool
  func call(withArguments arguments: [AnyObject]!) -> JSValue!
  func construct(withArguments arguments: [AnyObject]!) -> JSValue!
  func invokeMethod(_ method: String!, withArguments arguments: [AnyObject]!) -> JSValue!
}
extension JSValue {
  /*not inherited*/ init!(point point: CGPoint, in context: JSContext!)
  /*not inherited*/ init!(range range: NSRange, in context: JSContext!)
  /*not inherited*/ init!(rect rect: CGRect, in context: JSContext!)
  /*not inherited*/ init!(size size: CGSize, in context: JSContext!)
  func toPoint() -> CGPoint
  func toRange() -> NSRange
  func toRect() -> CGRect
  func toSize() -> CGSize
}
extension JSValue {
  func objectForKeyedSubscript(_ key: AnyObject!) -> JSValue!
  func objectAtIndexedSubscript(_ index: Int) -> JSValue!
  func setObject(_ object: AnyObject!, forKeyedSubscript key: protocol<NSCopying, NSObjectProtocol>!)
  func setObject(_ object: AnyObject!, atIndexedSubscript index: Int)
}
extension JSValue {
  /*not inherited*/ init!(jsValueRef value: JSValueRef, in context: JSContext!)
  var jsValueRef: JSValueRef { get }
}
let JSPropertyDescriptorWritableKey: String
let JSPropertyDescriptorEnumerableKey: String
let JSPropertyDescriptorConfigurableKey: String
let JSPropertyDescriptorValueKey: String
let JSPropertyDescriptorGetKey: String
let JSPropertyDescriptorSetKey: String
