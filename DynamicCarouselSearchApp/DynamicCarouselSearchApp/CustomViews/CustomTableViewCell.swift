//
//  CustomTableViewCell.swift
//  DynamicCarouselSearchApp
//
//  Created by PavanAvvaru on 09/04/25.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    static let id = "CustomTableViewCell"
    func configure(with text: String) {
        textLabel?.text = text
    }
}

