

import Foundation

protocol CellConfigurable {
    associatedtype Item
    func configure(with model: Item)
}
