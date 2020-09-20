//
//  TableViewCell.swift
//  SDTiPView
//
//  Created by Sachin Daingade on 20/09/20.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func createAccessoryViewWithTipView(title: String) {
        let accessoryButton = UIButton(type: .detailDisclosure)
        accessoryButton.accessibilityHint = title
        accessoryButton.addTarget(self, action: #selector(btnClicked(_ :)), for: .touchUpInside)
//        accessoryButton.reactive.tap.observeNext {[unowned self] _ in
//            if  let description = description {
//                let positionFrame = self.convert(accessoryButton.frame, to: self.superview)
//                let popupTipTextView = PopupTipTextView(withDescription: description)
//                SDTipPopup.shared.popTip.show(customView: popupTipTextView, direction: .auto, in: self.superview!, from: positionFrame)
//            }
//        }.dispose(in: self.bag)
        self.accessoryView = accessoryButton
    }
    
    
    @objc func btnClicked(_ sender : UIButton){
        let positionFrame = self.convert(sender.frame, to: self.superview)
        if let description = sender.accessibilityHint{
        let popupTipTextView = PopupTipTextView(withDescription: description)
        SDTipPopup.shared.popTip.show(customView: popupTipTextView, direction: .auto, in: self.superview!, from: positionFrame)
        }
    }
}
