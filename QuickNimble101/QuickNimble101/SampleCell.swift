//
//  SampleCell.swift
//  QuickNimble101
//
//  Created by Leonardo Oliveira on 02/12/20.
//

import UIKit

final class SampleCell: UITableViewCell {
    static var identifer: String {
        return String(describing: self)
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .blue
        textLabel?.text = "Teste"
        textLabel?.textColor = .white
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
