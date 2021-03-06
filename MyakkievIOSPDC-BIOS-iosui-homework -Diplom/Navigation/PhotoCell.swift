//
//  PhotoCell.swift
//  Navigation
//
//  Created by 1 on 12.04.2022.
//

import UIKit

class PhotoCell: UICollectionViewCell {
     var photoImageView: UIImageView = {
         let imageView = UIImageView()
         imageView.layer.cornerRadius = 6
         imageView.contentMode = .scaleAspectFill
         imageView.translatesAutoresizingMaskIntoConstraints = false
         imageView.backgroundColor = .white
         imageView.clipsToBounds = true
         return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.addSubview(self.photoImageView)

        let topConstraint = self.photoImageView.topAnchor.constraint(equalTo: self.topAnchor)
        let leadingConstraint = self.photoImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor)
        let trailingConstraint = self.photoImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        let bottomConstraint = self.photoImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor)

        NSLayoutConstraint.activate([
            topConstraint, leadingConstraint, bottomConstraint, trailingConstraint
            ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.photoImageView.image = nil
    }

    func setup(with photo: String) {
        self.photoImageView.image = UIImage()
    }
}
