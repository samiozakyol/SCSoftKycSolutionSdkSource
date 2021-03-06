import Foundation
import UIKit

public class SCSoftKycModel {
    
    public init() {
    }
    
    public var idFrontImage : UIImage?
    public var idFrontFaceImage : UIImage?
    public var idBackImage : UIImage?
    public var selfieImage : UIImage?
    public var mrzImage : UIImage?
    
    public var autoCropped_idFrontImage : UIImage?
    public var autoCropped_idBackImage : UIImage?
    public var autoCropped_selfieImage : UIImage?
    
    public var base64_idFrontImage : String?
    public var base64_idFrontFaceImage : String?
    public var base64_idBackImage : String?
    public var base64_selfieImage : String?
    public var base64_autoCropped_idFrontImage : String?
    public var base64_autoCropped_idBackImage : String?
    public var base64_autoCropped_selfieImage : String?
    
    public var nfcInformation : SCSoftKycNFCInformation?
    public var mrzInformation : SCSoftKycMRZInformation?
}
