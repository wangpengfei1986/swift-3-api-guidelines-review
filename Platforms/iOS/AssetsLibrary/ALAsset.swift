
@available(iOS, introduced=4.0, deprecated=9.0, message="Use PHAsset class properties from the Photos framework instead")
let ALErrorInvalidProperty: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use the mediaType property on a PHAsset from the Photos framework instead")
let ALAssetPropertyType: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use the location property on a PHAsset from the Photos framework instead")
let ALAssetPropertyLocation: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use the duration property on a PHAsset from the Photos framework instead")
let ALAssetPropertyDuration: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use the orientation of the UIImage returned for a PHAsset via the PHImageManager from the Photos framework instead")
let ALAssetPropertyOrientation: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use the creationDate property on a PHAsset from the Photos framework instead")
let ALAssetPropertyDate: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use PHImageRequestOptions with the PHImageManager from the Photos framework instead")
let ALAssetPropertyRepresentations: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use PHImageRequestOptions with the PHImageManager from the Photos framework instead")
let ALAssetPropertyURLs: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use the localIdentifier property on a PHAsset (or to lookup PHAssets by a previously known ALAssetPropertyAssetURL use fetchAssetsWithALAssetURLs:options:) from the Photos framework instead")
let ALAssetPropertyAssetURL: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use PHAssetMediaTypeImage from the Photos framework instead")
let ALAssetTypePhoto: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use PHAssetMediaTypeVideo from the Photos framework instead")
let ALAssetTypeVideo: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use PHAssetMediaTypeAudio for audio or PHAssetMediaTypeUnknown for unknown media types from the Photos framework instead")
let ALAssetTypeUnknown: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use PHAsset from the Photos framework instead")
class ALAsset : Object {
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use PHAsset class properties from the Photos framework instead")
  func valueFor(property property: String!) -> AnyObject!
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use PHImageRequestOptions with the PHImageManager from the Photos framework instead")
  func defaultRepresentation() -> ALAssetRepresentation!
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use PHImageRequestOptions with the PHImageManager from the Photos framework instead")
  func representationFor(uti representationUTI: String!) -> ALAssetRepresentation!
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use requestImageForAsset:targetSize:contentMode:options:resultHandler: on PHImageManager to request a thumbnail sized image for a PHAsset from the Photos framework instead")
  func thumbnail() -> Unmanaged<CGImage>!
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use the PHImageContentMode options to request thumbnail aspect ratio in PHImageRequestOptions with the PHImageManager")
  func aspectRatioThumbnail() -> Unmanaged<CGImage>!
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use creationRequestForAssetFromImage: on PHAssetChangeRequest from the Photos framework to create a new asset instead")
  func writeModifiedImageDataTo(savedPhotosAlbum imageData: Data!, metadata: [Object : AnyObject]!, completionBlock: ALAssetsLibraryWriteImageCompletionBlock!)
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use creationRequestForAssetFromVideoAtFileURL: on PHAssetChangeRequest from the Photos framework to create a new asset instead")
  func writeModifiedVideoAtPathTo(savedPhotosAlbum videoPathURL: URL!, completionBlock: ALAssetsLibraryWriteVideoCompletionBlock!)
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use the PHImageRequestOptionsVersionOriginal or PHImageRequestOptionsVersionUnadjusted option in PHImageRequestOptions with the PHImageManager from the Photos framework instead")
  var original: ALAsset! { get }
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use canPerformEditOperation: on a PHAsset from the Photos framework instead")
  var isEditable: Bool { get }
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use contentEditingOutput on a PHAssetChangeRequest from the Photos framework instead")
  func setImageData(imageData: Data!, metadata: [Object : AnyObject]!, completionBlock: ALAssetsLibraryWriteImageCompletionBlock!)
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use contentEditingOutput on a PHAssetChangeRequest from the Photos framework instead")
  func setVideoAtPath(videoPathURL: URL!, completionBlock: ALAssetsLibraryWriteVideoCompletionBlock!)
  init()
}