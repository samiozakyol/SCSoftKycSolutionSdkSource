//
//  ToggleButton.swift
//  SCSoftKycSolutionSdk
//
//  Created by samiozakyol on 28.07.2021.
//

import UIKit
class ToggleButton: UIButton {
    
    /*@IBInspectable var highlightedSelectedImage:UIImage?
    
    override func awakeFromNib() {
        self.addTarget(self, action: #selector(btnClicked(_:)),
                       for: .touchUpInside)
        self.setImage(highlightedSelectedImage,
                      for: [.highlighted, .selected])
    }
    
    @objc func btnClicked (_ sender:UIButton) {
        isSelected.toggle()
    }*/
    
    @IBInspectable  var isOn:Bool = false{
        didSet{
            updateDisplay()
        }
    }
    
    @IBInspectable var onImage:UIImage! = nil{
        didSet{
            updateDisplay()
        }
    }
    
    @IBInspectable var offImage:UIImage! = nil{
        didSet{
            updateDisplay()
        }
    }
     
    func updateDisplay(){
        if isOn {
            if let onImage = onImage{
                setBackgroundImage(onImage, for: .normal)
            }
        } else {
            if let offImage = offImage{
                setBackgroundImage(offImage, for: .normal)
            }
        }
    }
    override func endTracking(_ touch: UITouch?, with event: UIEvent?) {
        super.endTracking(touch, with: event)
        isOn = !isOn
    }
    
}
