//
//  SDTipPopup.swift
//  SDTiPView
//
//  Created by Sachin Daingade on 20/09/20.
//

import Foundation
import AMPopTip
import UIKit

class SDTipPopup{
    static let shared = SDTipPopup()
    let popTip = PopTip()
    
    private init(){
        popTip.bubbleColor = UIColor.black
        popTip.cornerRadius = 5
    }
}
class PopupTipTextView: UITextView {
    required init(withDescription description: String) {
        super.init(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 250, height: 44)), textContainer: nil)
        self.text = "\(description)"
        self.isScrollEnabled = false
        self.isEditable = false
        self.backgroundColor = UIColor.black
        self.textColor = UIColor.white
        self.dataDetectorTypes = .link
        self.linkTextAttributes = [.foregroundColor: UIColor.blue]
        self.sizeToFit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
