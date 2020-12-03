//
//  Function.swift
//  QuickNimble101
//
//  Created by Leonardo Oliveira on 01/12/20.
//

import UIKit

struct Function {
    func soma(x: Int, y: Int) -> Int {
        return x + y
    }
}

@propertyWrapper final class AutoLayout<T: UIView> {

    private lazy var view: T = {
        let view = T(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view

    }()

    var wrappedValue: T {
        return view
    }
}
