//
//  Setupable.swift
//  Navigation
//
//  Created by 1 on 11.04.2022.
//

import Foundation

protocol ViewModelProtocol {}

protocol Setupable {
    func setup(with viewModel: ViewModelProtocol)
}
