//
//  CustomCollectionViewCell.swift
//  DynamicCarouselSearchApp
//
//  Created by PavanAvvaru on 09/04/25.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    static let id = "CustomCollectionViewCell"
    let label = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .systemGray5
        label.textAlignment = .center
        label.frame = contentView.bounds
        label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        contentView.addSubview(label)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

